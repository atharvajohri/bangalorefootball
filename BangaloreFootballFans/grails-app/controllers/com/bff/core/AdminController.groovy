package com.bff.core

import com.bff.secure.SecUser
import grails.plugins.springsecurity.Secured

class AdminController {

	def utilityService, springSecurityService
	
	@Secured(['ROLE_ADMIN'])
	def managePlayers() {
		def players = Player.list()
		[players: players]
	}
	
	@Secured(['ROLE_ADMIN'])
	//view actions
	def addPlayer(){}
	
	@Secured(['ROLE_ADMIN'])
	//logic actions
	def createPlayer(){
		log.info "trying to create new player"
		def user = new SecUser(username: params.email, password: utilityService.generatePassword(null, null))
		def player = new Player(params)
		user.player = player
		player.secUser = user
		if (user.save()){
			redirect action:"managePlayers"
		}else{
			render view:"addPlayer", model:[player:player]
		}
	}
}
