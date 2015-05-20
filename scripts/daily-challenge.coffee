# Daily Coding Challenges

module.exports = (robot) ->
  robot.hear /^challenge$/i, (msg) ->
  	welcomeText = "Hello Rockwood. How has your day been. Prepare to be mentally challenged...err. Challenged menta-. Prepare to learn how to code GODDAMMIT!\n"

    challenges = ["Your current challenge is to build a script that counts. When someone says `count to X`, x being a number, I want you to reply with all the numbers from 1 to X.\n\nI'm not going to tell you the answer but I can provide you with hints if you get stuck.\n\nThe first hint is a free-be: You might need to _loop_ through some numbers."]

    currentChallenge = robot.brain.get('currentChallenge') * 1 or 0
    robot.brain.set 'currentChallenge', currentChallenge+1
    currentChallenge = challenges[currentChallenge]
    msg.send welcomeText + currentChallenge
