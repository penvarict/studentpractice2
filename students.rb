students =[]
eye_colors = []
ages = []
bloodtype = []
File.open("student_data.csv").each do |line|
	info = line.split(",")
	students.push(info[0].strip)
	eye_colors.push(info[1].strip)
	ages.push(info[2].strip.to_i)
	bloodtype.push(info[3].strip)
end	


#print students, "\n"
#print eye_colors, "\n"
#print ages, "\n"



def brown_eyes_count(eye_colors)
	students_with_brown_Eyes = 0
	eye_colors.each do |eye_colors|
		if eye_colors == "Brown"
			students_with_brown_Eyes +=1
		end
		 



	end

	return students_with_brown_Eyes

end


def driving_age_count(ages)
	who_can_drive = 0
	ages.each do |ages|
		if ages >= 16 
			who_can_drive += 1
		end

	end		
	return who_can_drive
end 

def list_of_green_eye_girls(eye_colors,students)
	green_eyed_girls = []
	eye_colors.each_with_index do |eye_color, i|  #eye color 
		if eye_color == "Green" && i % 2 == 0 #odd elements in list,, if in odd index and eye color is green then print name in the index spot
			green_eyed_girls.push(students[i])
			
		end
	end	

	return green_eyed_girls
end


###

def vowel_count(string)  #just check function, not part of problem
	vowels = 0
	string.each_char do |letters|
		if letters.downcase == 'a' || letters.downcase== 'e' || letters.downcase == 'i' || letters.downcase == 'o' || letters.downcase == 'u'
			vowels += 1
		end
	end
	return vowels
end

def most_number_of_vowels(students, ages)   #check for age,push names to list, find count of vowels in each name with vowel count fucntion, sort out the highest one,return the student with the highest number of vowels
	sophomore_names = []   	#empty list
	name_with_most_vowels = ""
	most_vowels = 0		

	ages.each_with_index do |age, i|
		if age == 15
				sophomore_names.push(students[i])
		end		

	end

	sophomore_names.each do |sophomore_names|
		if vowel_count(sophomore_names)> most_vowels
			most_vowels = vowel_count(sophomore_names)
			name_with_most_vowels = sophomore_names
		end
	end

	return name_with_most_vowels


end





def average_age_of_geye (ages, eye_colors)
	green_ages = []
	average_age = 0
	number_of_students = 0
	eye_colors.each_with_index do |color, i|
		if color.downcase == "green"
			green_ages.push(ages[i]) #push ages to list
			number_of_students += 1 #record number for average
		end
	end
	green_ages.each do |age|
		average_age += age
	end
	green_eye_average = average_age / number_of_students

	return green_eye_average.to_i #return whole number
end






puts "the number of people with brwon eyes are"
puts brown_eyes_count(eye_colors)

puts "the number of students who can drive are"
puts driving_age_count(ages)

puts "the girls with green eyes are"
puts list_of_green_eye_girls(eye_colors, students)


puts "the name with most vowels is"
print most_number_of_vowels(students, ages), "\n"


puts "the average age of a green eyed student is"
print average_age_of_geye(ages, eye_colors)

