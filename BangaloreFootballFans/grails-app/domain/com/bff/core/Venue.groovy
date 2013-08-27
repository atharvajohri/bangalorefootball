package com.bff.core

class Venue {

	String name
	String phoneNumber
	String address
	
	Double latitude
	Double longitude
	
	String description
	
	Date dateCreated
	Boolean enabled = true
	
    static constraints = {
		address nullable: true
		latitude nullable: true
		longitude nullable: true
		description nullable: true
    }
	
	static mapping = {
		address type: 'text'
		description type: 'text' 
	}
}
