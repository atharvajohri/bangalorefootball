package com.bff.core

class PlayerTagLib {

	static namespace = "player"
	
	def showPhoto = { attrs ->
		def player = attrs.player
		def outString = """
			<div class='player-photo-container'>
				<img class="player-photo" src="${player.photoURL ?: (player.facebookID ? 'http://graph.facebook.com/${player.facebookID}/picture' : '/images/icons/default_photo.jpg' )}">
			</div>
		"""
		
		out << outString
	}
}
