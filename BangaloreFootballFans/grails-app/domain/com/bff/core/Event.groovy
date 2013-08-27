package com.bff.core

import java.util.Date;

class Event {

	Player createdBy
	Venue venue
	static hasMany = [attendingPlayers: Player, invitedPlayers: Player]
	Date scheduledTime
	
	String remarks
	
	Date dateCreated
	Boolean enabled = true
	
    static constraints = {
		remarks nullable:true
    }
	
	static mapping = {
		remarks type: 'text'
	}
}
