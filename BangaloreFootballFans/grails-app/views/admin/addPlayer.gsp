<!doctype HTML>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Add Player</title>
		<style>
			
		</style>
	</head>
	<body>
		<div class="content-container">
			<div class="content-title">
				Add a Player
			</div>
			<g:hasErrors bean="${player}">
			  	<ul class="error-list">
			   		<g:eachError var="err" bean="${player}">
			       		<li>${err}</li>
			   		</g:eachError>
			  	</ul>
			</g:hasErrors>
			<div class="content-form">
				<g:form controller="admin" action="createPlayer">
					<table>
						<tr>
							<td valign="top">Email*:<br> <span class="note">(This is also the username)</span></td><td><g:textField name="email" value="${player?.email}" class="input-field"/></td>
						</tr>
						<tr>
							<td valign="top">Name*:</td><td><g:textField name="name" value="${player?.name}" class="input-field"/></td>
						</tr>
						<tr>
							<td valign="top">Phone Number*:</td><td><g:textField name="phoneNumber" value="${player?.phoneNumber}" class="input-field"/></td>
						</tr>
						<tr>
							<td valign="top">Nickname:</td><td><g:textField name="nickname" value="${player?.nickname}" class="input-field"/></td>
						</tr>
						<tr>
							<td valign="top">Photo URL:</td><td><g:textField name="photoURL" value="${player?.photoURL}" class="input-field"/></td>
						</tr>
						<tr>
							<td valign="top">Description:</td><td><g:textArea name="description" value="${player?.description}" class="input-field input-text"/></td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<g:submitButton name="submit_player" value="Submit" class="btn"/>
							</td>
						</tr>
					</table>
				</g:form>
			</div>
		</div>
	</body>
</html>