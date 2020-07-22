package com.alex.loginform.model;

import lombok.Data;
import org.springframework.stereotype.Component;

import javax.validation.constraints.*;

@Data
@Component
public class User {
    @NotNull
    @NotEmpty(message = "Please enter your e-mail.")
    @Email(regexp = "^([a-zA-Z0-9_\\-\\.]+)@([a-zA-Z0-9_\\-\\.]+)\\.([a-zA-Z]{2,5})$",
            message = "Email incorrect, try to retype")
    private String email;

    @NotNull
    @Size(min = 4, max = 20,message = "Your password must between 6 and 10 characters.")
    @Pattern(regexp = "^[A-Za-z0-9_]*$",message = "must only contain letters, numbers, underscores")
    private String password;
}
