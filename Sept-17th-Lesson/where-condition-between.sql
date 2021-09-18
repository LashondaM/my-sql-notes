select Lastname, Firstname, SAT
	from student
	where SAT between 1200 and 1600
	Order by SAT desc;