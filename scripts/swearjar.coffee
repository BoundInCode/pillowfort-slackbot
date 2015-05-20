
# _ = require('underscore')
# clark = require('clark')
# querystring = require('querystring')
# ScoreKeeper = require('./scorekeeper')

module.exports = (robot) ->
  # scoreKeeper = new ScoreKeeper(robot)

  # sweet regex bro
  robot.hear /(.*)fuck|shit|cunt|asshole|dick|twat|pussy|bitch|woodcutting(.*)/i, (msg) ->
  	fullmessage = msg.match[0]
  	count = (fullmessage.match(/fuck|shit|cunt|asshole|dick|twat|pussy/g) || []).length
  	if count > 6
  		msg.send "Why must you swear so much you sailor! Jee Whiz!"
  	else if count > 5 
  		msg.send "Mike Stop"
  	else if count > 4
  	  	msg.send "Swears! No!"
  	else if count > 3
  	   	msg.send "Those words hurt my pillowbot ears!" 
  	else if count > 2
  		msg.send "This is worse than Hitler!"
  	else if count > 1
 	else
  		msg.send "Hey, No Swearing. We are adults now."
 #    # let's get our local vars in place
 #    [dummy, name, operator, reason] = msg.match
 #    from = msg.message.user.name.toLowerCase()
 #    room = msg.message.room

 #    # do some sanitizing
 #    reason = reason?.trim().toLowerCase()
 #    name = (name.replace /(^\s*@)|([,:\s]*$)/g, "").trim().toLowerCase() if name

 #    # check whether a name was specified. use MRU if not
 #    unless name? && name != ''
 #      [name, lastReason] = scoreKeeper.last(room)
 #      reason = lastReason if !reason? && lastReason?

 #    # do the {up, down}vote, and figure out what the new score is
 #    [score, reasonScore] = if operator == "++"
 #              scoreKeeper.add(name, from, room, reason)
 #            else
 #              scoreKeeper.subtract(name, from, room, reason)

 #    # if we got a score, then display all the things and fire off events!
 #    if score?
 #      message = if reason?
 #                  if reasonScore == 1 or reasonScore == -1
 #                    "#{name} has #{score} points, #{reasonScore} of which is for #{reason}."
 #                  else
 #                    "#{name} has #{score} points, #{reasonScore} of which are for #{reason}."
 #                else
 #                  if score == 1
 #                    "#{name} has #{score} point"
 #                  else
 #                    "#{name} has #{score} points"
                  

 #      msg.send message

 #      robot.emit "plus-one", {
 #        name: name
 #        direction: operator
 #        room: room
 #        reason: reason
 #      }

