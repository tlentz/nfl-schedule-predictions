schedule = {}
with open('nfl2018schedule.csv', 'rb') as csvfile:
    lines = csvfile.readlines()
    for i in range(0, len(lines)):
        line = lines[i].decode('utf-8').strip('\r\n')
        teams = line.split(',')
        team_name = teams[0]
        opponents = []
        for j in range(1, len(teams)):
            opp = teams[j]
            if '@' in opp:
                opponents.append('{ location = Away, opponent = ' + opp.strip('@') + ', result = Tie }')
            else:
                opponents.append('{ location = Home, opponent = ' + opp + ', result = Tie }')
        schedule[team_name] = opponents
    print(schedule)
with open('nfl2018schedule.json', 'w') as json:
    json.write(str(schedule))