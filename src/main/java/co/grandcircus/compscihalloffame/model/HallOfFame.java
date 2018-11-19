package co.grandcircus.compscihalloffame.model;

import java.util.List;

public class HallOfFame {
	
	private List<CompleteHero> complete;
	private List<TinyHero> tiny;
	
	public HallOfFame() {
		super();
		// TODO Auto-generated constructor stub
	}

	public HallOfFame(List<CompleteHero> complete, List<TinyHero> tiny) {
		super();
		this.complete = complete;
		this.tiny = tiny;
	}

	public List<CompleteHero> getComplete() {
		return complete;
	}

	public void setComplete(List<CompleteHero> complete) {
		this.complete = complete;
	}

	public List<TinyHero> getTiny() {
		return tiny;
	}

	public void setTiny(List<TinyHero> tiny) {
		this.tiny = tiny;
	}

	@Override
	public String toString() {
		return "HallOfFame [complete=" + complete + ", tiny=" + tiny + "]";
	}
	
}
