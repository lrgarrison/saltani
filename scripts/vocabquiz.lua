function contains(table, element)
  for _, value in pairs(table) do
    if value == element then
      return true end end
  return false end
function split(basestring, separator)
	pieces = {}
	for _ = 1, 4 do
		location = string.sub(string.find(basestring, separator), 1, 2)
		table.insert(pieces, string.sub(basestring, 1, location - 1))
		if location ~= string.len(basestring) then
			basestring = string.sub(basestring, location + 1) end end
	return pieces end
function Initialize()
	sMeterToSetValue = SELF:GetOption('MeterToSetValue')
	mtMeterToSetValue = SKIN:GetMeter(sMeterToSetValue)
	file = io.lines("vocabulary.csv")
	file()
	words = {}
	numwords = 0
	for line in file do
		table.insert(words, split(line, ","))
		numwords = numwords + 1 end
	numcorrect = 0
	numincorrect = 0
	math.randomseed(os.time())
end
function Update()
	Skin:Bang('!SetOption SaltaniLua Text'.. 'this is some\ntext and stuff')
end
while true do
	chosenwords = {}
	for _ = 1, 4 do
		chosenword = words[math.random(numwords)]
		while contains(chosenwords, chosenword) do
			chosenword = words[math.random(numwords)] end
		table.insert(chosenwords, chosenword) end
	printsaltani = math.random(2)
	printnum = (printsaltani == 1) and 2 or 3
	offernum = (printsaltani == 1) and 3 or 2
	for _ = 1, 4 do
		print(string.sub("ASDF", _, _) .. " " .. string.format("%-13s", chosenwords[_][1]) .. " - " .. chosenwords[_][printnum]) end
	rightnumber = math.random(4)
	io.write('which is "' .. chosenwords[rightnumber][offernum] .. '"? ')
	userchoice = io.read()
	if userchoice == string.sub("asdf", rightnumber, rightnumber) then
		print("correct!\n")
		numcorrect = numcorrect + 1
	elseif userchoice == "q" then break else
		print("no, it's " .. string.sub("ASDF", rightnumber, rightnumber) .. ": " .. chosenwords[rightnumber][printnum] .. "\n")
		numincorrect = numincorrect + 1	end end
io.write("\nyou got ".. numcorrect .. " right and " .. numincorrect .. " wrong")
var = io.read()