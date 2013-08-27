import com.bff.secure.SecRole
import com.bff.secure.SecUser
import com.bff.secure.SecUserSecRole

class BootStrap {

    def init = { servletContext ->
		def userRole = SecRole.findByAuthority('ROLE_USER') ?: new SecRole(authority: 'ROLE_USER').save(failOnError: true)
		def adminRole = SecRole.findByAuthority('ROLE_ADMIN') ?: new SecRole(authority: 'ROLE_ADMIN').save(failOnError: true)
		def founderRole = SecRole.findByAuthority('ROLE_FOUNDER') ?: new SecRole(authority: 'ROLE_FOUNDER').save(failOnError: true)
//		def supervisorRole = SecRole.findByAuthority('ROLE_SUPERVISOR') ?: new SecRole(authority: 'ROLE_SUPERVISOR').save(failOnError: true)
		
		def adminUser = SecUser.findByUsername("admin")
		if (!adminUser){
			adminUser = new SecUser(username:"admin", password:"iamanadmin").save(failOnError: true)
			SecUserSecRole.create adminUser, SecRole.findByAuthority('ROLE_ADMIN')
			log.info "created admin"
		}
    }
    def destroy = {
    }
}
