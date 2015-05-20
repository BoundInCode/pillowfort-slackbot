# Daily Coding Challenges

request = require('request')
module.exports = (robot) ->
  robot.respond /challenge/i, (msg) ->
    welcomeText = "Hello Rockwood. How has your day been? Swell. Prepare to be mentally challenged...err. Challenged menta-. Prepare to learn how to code.\n"

    formatDate = (date) ->
      timeStamp = [(date.getMonth() + 1), date.getDate(), date.getFullYear()].join("-")
      RE_findSingleDigits = /\b(\d)\b/g

      # Places a `0` in front of single digit numbers.
      timeStamp = timeStamp.replace( RE_findSingleDigits, "0$1" )
      timeStamp.replace /\s/g, ""

    date = formatDate(new Date())
    
    currentChallenge = "http://liamca.in/challenges/" + date + ".txt"

    request.get { uri: currentChallenge, json: true}, (err, r, body) -> 
        if err
            msg.send err
        else
            msg.send welcomeText + body
