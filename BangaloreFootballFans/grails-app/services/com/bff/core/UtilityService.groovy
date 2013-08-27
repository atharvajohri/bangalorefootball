package com.bff.core

class UtilityService {

    def generatePassword(alphabet, n){
		alphabet = alphabet ?: (('A'..'Z')+('0'..'9')).join()
		n = n ?: 9
		new Random().with {
			(1..n).collect { alphabet[ nextInt( alphabet.length() ) ] }.join()
		}
    }
}
