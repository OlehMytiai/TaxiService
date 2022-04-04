package taxi.service;

import java.util.Optional;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import taxi.exception.AuthenticationException;
import taxi.lib.annotation.Inject;
import taxi.lib.annotation.Service;
import taxi.model.Driver;

@Service
public class AuthenticationServiceImpl implements AuthenticationService {
    private static final Logger logger = LogManager.getLogger(AuthenticationServiceImpl.class);
    @Inject
    private DriverService driverService;

    @Override
    public Driver login(String login, String password) throws AuthenticationException {
        logger.info("Login method was called. Params: login = {}", login);
        Optional<Driver> driver = driverService.findByLogin(login);
        if (driver.isEmpty()
                || !driver.get().getPassword().equals(password)) {
            throw new AuthenticationException("Username or password was incorrect");
        }
        return driver.get();
    }
}
