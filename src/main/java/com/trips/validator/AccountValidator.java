package com.trips.validator;

import org.apache.commons.validator.routines.EmailValidator;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.trips.model.AccountForm;

@Component
public class AccountValidator implements Validator {

	private EmailValidator emailValidator = EmailValidator.getInstance();

    /**
     * This Validator validates *just* AccountForm instances
     */
	@Override
	public boolean supports(Class<?> clazz) {
		return AccountForm.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		AccountForm account = (AccountForm) target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "NotEmpty.accountForm.email");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "NotEmpty.accountForm.password");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "NotEmpty.accountForm.confirmPassword");
		if (!emailValidator.isValid(account.getEmail())) {
			errors.rejectValue("email", "Pattern.accountForm.email");
		}
		if (account.getPassword() != null && account.getPassword().length() < 6) {
			errors.rejectValue("password", "Pattern.userForm.password");
		}
		if (account.getPassword() != null && !account.getPassword().equals(account.getConfirmPassword())) {
			errors.rejectValue("confirmPassword", "Diff.accountForm.confirmPassword");
		}
	}

}
