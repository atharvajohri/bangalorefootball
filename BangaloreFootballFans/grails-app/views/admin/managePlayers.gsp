<!doctype HTML>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Manage Players</title>
		<style>
			
			#mp-player-list {margin:10px;}
				#mp-header-options {overflow:auto;font-family:"arial";color:#555;}
					.mp-header-option {padding:5px;font-weight:bold;width:100px;text-align:center;border-radius:5px;background:#dedede;}
					.mp-header-option:hover {cursor:pointer;background:#ccc;}
				#mp-player-table-container {padding:10px;border:1px solid #dedede;margin-top:5px;}
					#mp-players td {text-align:center;padding:5px 10px;}			
		</style>
	</head>
	<body>
		<div class="content-container">
			<div id="mp-player-list">
				<div id="mp-header-options">
					<a href="/admin/addPlayer" target="_blank">
						<div class="mp-header-option">
							Add
						</div>
					</a>
				</div>
				<div id="mp-player-table-container">
					<g:if test="${players}">
						<table id="mp-players">
							<tr>
								<th></th><th>Name</th><th>Email</th><th>Phone</th><th>Facebook Profile</th><th>Date Joined</th><th>Edit</th><th>Disable</th>
							</tr>
							<g:each in="${players }" var="player">
								<tr>
									<td>
										<player:showPhoto player="${player}"/>
									</td>
									<td>${player.name }</td><td>${player.email }</td><td>${player.phoneNumber }</td>
									<td>${player.facebookID ?: "<i>Not Created</i>" }</td><td>${player.dateCreated }</td>
									<td>Edit</td><td>Disable</td>
								</tr>
							</g:each>
						</table>
					</g:if>
					<g:else>
						<i>No players found</i>
					</g:else>
				</div>
			</div>
		</div>
	</body>
</html>