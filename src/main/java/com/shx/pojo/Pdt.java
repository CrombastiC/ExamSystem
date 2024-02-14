package com.shx.pojo;

public class Pdt {
		private String question_id;
		private String subject;
		private String answer;
	
		
	
		
		public Pdt(String question_id) {
			super();
			this.question_id = question_id;
		}



		public Pdt(String subject, String answer) {
			super();
			this.subject = subject;
			this.answer = answer;
		}



		public Pdt(String question_id, String subject, String answer) {
			super();
			this.question_id = question_id;
			this.subject = subject;
			this.answer = answer;
		}



		public Pdt() {}
		
		

		public String getQuestion_id() {
			return question_id;
		}



		public void setQuestion_id(String question_id) {
			this.question_id = question_id;
		}



		public String getSubject() {
			return subject;
		}



		public void setSubject(String subject) {
			this.subject = subject;
		}



		public String getAnswer() {
			return answer;
		}



		public void setAnswer(String answer) {
			this.answer = answer;
		}



		@Override
		public String toString() {
			return "Pdt [subject=" + subject + ", answer="+answer+" ]";
		}
			public void printPdt() {
				System.out.println(toString());
				
			}	
		
}
