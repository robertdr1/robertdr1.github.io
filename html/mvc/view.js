class t_eq2_view{
	events;
	constructor()
	{
		document.getElementById("id_button").addEventListener("click", this.on_solve_clicked);
	}
	
	set_events(events)
	{
		this.events = events;
	}
	
	on_solve_clicked()
	{
		//ar trebui sa apelam functiia on_solve din controller
		//dar nu putem direct
		//din lista de  functii apelam functia on_solve
		this.events.call_event("on_solve_clicked_uab");
	}
	
	get_a()
	{
		return document.getElementById("id_a").value;
	}
	
	get_b ()
	{
		 return document.getElementById("id_b").value;
	}
	
	get_c()
	{
		return document.getElementById("id_c").value;
	}
	
	set_solutions_para(solutions)
	{
		document.getElementById("id_x1").innerHTML ="X1 = " + solutions.x1_re + "-" + solutions.x1_im + "i";
		document.getElementById("id_x2").innerHTML ="X2 = " + solutions.x2_re + "-" + solutions.x2_im + "i";
	}
}