package movie.management.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="movies")
public class Movie {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	protected int id;

	@Column(name="denumire")
	protected String denumire;
    
	@Column(name="durata")
	protected int durata; //minute
	
	@Column(name="anAparitie")
    protected int anAparitie;

    public Movie() {
    }
    
    public Movie(String denumire, int durata, int anAparitie) {
    	super();
    	this.denumire = denumire;
        this.durata = durata;
        this.anAparitie = anAparitie;
    }
    
    public Movie(int id, String denumire, int durata, int anAparitie) {
        super();
        this.id = id;
        this.denumire = denumire;
        this.durata = durata;
        this.anAparitie = anAparitie;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDenumire() {
        return denumire;
    }

    public void setDenumire(String denumire) {
        this.denumire = denumire;
    }

    public int getDurata() {
        return durata;
    }

    public void setDurata(int durata) {
        this.durata = durata;
    }

    public int getAnAparitie() {
        return anAparitie;
    }

    public void setAnAparitie(int anAparitie) {
        this.anAparitie = anAparitie;
    }

}
