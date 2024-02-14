package com.shx.pojo;

public class Sub {
		private String question_id;
		private String subject;
		private String choice_a;
		private String choice_b;
		private String choice_c;
		private String choice_d;
		private String answer;
	
		public Sub(String subject, String choice_a, String choice_b, String choice_c, String choice_d, String answer) {
			super();
			this.subject = subject;
			this.choice_a = choice_a;
			this.choice_b = choice_b;
			this.choice_c = choice_c;
			this.choice_d = choice_d;
			this.answer = answer;
		}
		public Sub() {}
		
		
		public Sub(String question_id) {
			super();
			this.question_id = question_id;
		}
		
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
		public String getChoice_a() {
			return choice_a;
		}
		public void setChoice_a(String choice_a) {
			this.choice_a = choice_a;
		}
		public String getChoice_b() {
			return choice_b;
		}
		public void setChoice_b(String choice_b) {
			this.choice_b = choice_b;
		}
		public String getChoice_c() {
			return choice_c;
		}
		public void setChoice_c(String choice_c) {
			this.choice_c = choice_c;
		}
		public String getChoice_d() {
			return choice_d;
		}
		public void setChoice_d(String choice_d) {
			this.choice_d = choice_d;
		}
		public String getAnswer() {
			return answer;
		}
		public void setAnswer(String answer) {
			this.answer = answer;
		}
		@Override
		public String toString() {
			return "Sub [subject=" + subject + ", choice_a=" + choice_a + ", choice_b=" + choice_b + ", choice_c="
					+choice_c+ ", choice_d=" +choice_d+ ",answer="+answer+" ]";
		}
			public void printSub() {
				System.out.println(toString());
				
			}	
		
}
