package com.bff.core

import com.bff.secure.SecUser;
import java.util.Date;

class Player {

	String name
	String nickname
	String email
	String phoneNumber
	String photoURL
	String description
	String facebookID
	
	Date dateCreated
	Boolean enabled = true
	
	static belongsTo = [secUser: SecUser]
	
    static constraints = {
		email email:true, nullable:false, unique:true
		description nullable:true
		photoURL nullable:true
		nickname nullable:true, unique:true
		facebookID nullable:true
		phoneNumber unique:true
    }
	
	static mapping = {
		description type: 'text'
	}
}
