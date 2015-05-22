module.exports = (robot) ->

	robot.hear /Count to \d+/i, (msg) ->
		number = msg.match[1]
		fullmessage = ""
		i = 1 
		while i < number
			fullmessage = fullmessage + i
			i++

		msg.send fullmessage

			


		
		