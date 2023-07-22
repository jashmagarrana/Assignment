package com.example.user.serviceImpl;

import com.example.user.entity.User;
import com.example.user.repository.UserRepository;
import com.example.user.service.UserService;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.NoSuchElementException;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {


    @Autowired
    UserRepository ur;

    public boolean checkPassword(String plainPassword, String encryptedPassword) {
        return BCrypt.checkpw(plainPassword, encryptedPassword);
    }

    @Override
    public User loginUser(User u) {
        User dbUser= ur.findByUname(u.getUname());
        try
        {
            if(checkPassword(u.getUpassword(), dbUser.getUpassword()))
            {
                return dbUser;
            }
            else
            {
                return null;
            }
        }
        catch(NullPointerException e)
        {
            System.out.println(e);
        }
        return null;
    }


    @Override
    public User editUser(User u) {

        return ur.save(u);
    }

    @Override
    public User createNewUser(User u) {
        User ucc;
        try
        {
            Optional<User> uccResponse = ur.findById(u.getUid());
            if(uccResponse.isPresent())
            {
                return null;
            }
            else
            {
                String encryptedPassword = BCrypt.hashpw(u.getUpassword(), BCrypt.gensalt());

                u.setUpassword(encryptedPassword);
                return ur.save(u);
            }
        }
        catch(NoSuchElementException ex)
        {
            System.out.println(ex);
        }

        return null;
    }

    @Override
    public User forgetPassword(User u) {
        User dbUser= ur.findByUname(u.getUname());
        User ucc;
        try
        {
            Optional<User> accResponse =ur.findById(u.getUid());
            if(accResponse.isPresent())
            {
                try
                {
                    if((dbUser.getUid()==(u.getUid()))& (dbUser.getUname().equals(u.getUname())))
                    {
                        String encryptedPassword = BCrypt.hashpw(u.getUpassword(), BCrypt.gensalt());
                        u.setUpassword(encryptedPassword);
                        return ur.save(u);
                    }
                }
                catch(NullPointerException e)
                {
                    System.out.println(e);
                }


            }
            else
            {
                return null;
            }
        }
        catch(NoSuchElementException ex)
        {
            System.out.println(ex);
        }

        return null;
    }

    @Override
    public User changePassword(User u) {
        User dbUser= ur.findByUname(u.getUname());
        User ucc;
        try
        {
            Optional<User> accResponse =ur.findById(u.getUid());
            if(accResponse.isPresent())
            {
                try
                {
                    String encryptedPassword = BCrypt.hashpw(u.getUpassword(), BCrypt.gensalt());
                    u.setUpassword(encryptedPassword);
                    return ur.save(u);
                }
                catch(NullPointerException e)
                {
                    System.out.println(e);
                }
            }
            else
            {
                return null;
            }
        }
        catch(NoSuchElementException ex)
        {
            System.out.println(ex);
        }

        return null;
    }

}
