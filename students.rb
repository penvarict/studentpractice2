students =[]
eye_colors = []
ages = []

File.open("student_data.csv").each do |line|
	info = line.split(",")
	students.push(info[0].strip)
	eye_colors.push(info[1].strip)
	ages.push(info[2].strip.to_i)
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


def most_number_of_vowels(students, ages)   #check for age,push names to list, find count of vowels in each name, sort out the highest one,return the student with the highest number of vowels
	sophomore_names = []   	#empty list
	vowel_count = 0				
	max_vowel_count = 0
	student_name_max = ""
	number_of_a = 0

	students.each_with_index do |student, i|
		if ages[i] == 15   #if ages at index i, (defined above) is fifteen add the name at that index to list
			sophomore_names.push(students[i]) #push names of sophomores to sophmore names list
		end
	end
	return sophomore_names

	sophomore_names.chars.to_a.each_with_index do |sophomore_names, i| #count vowels ["name","name"]
		#sophomore_name.chars.each_with_index do |char, i|
		if chr == "a" || chr == "e" || chr == "i" || chr =="o" || chr == "u"
			vowel_count[i] += 1 #vowel count = vc+1
			elsif vowel_count[i] > max_vowel_count	#if the vowel count of the first name in the index is more than the max vowel count set that as the new max
				sophomore_name[i] = student_name_max
				
			
		end #end first if
			
		#end #end index func


	end	



	return student_name_max  
	
end






puts brown_eyes_count(eye_colors)
puts driving_age_count(ages)
puts list_of_green_eye_girls(eye_colors, students)
print most_number_of_vowels(students, ages), "\n"

#print most_number_of_vowels (students, age)  output=student


