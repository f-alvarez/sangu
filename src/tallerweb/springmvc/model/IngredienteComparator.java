package tallerweb.springmvc.model;
import java.util.Comparator;

public class IngredienteComparator implements Comparator<Ingrediente> {

	@Override
	public int compare(Ingrediente o1, Ingrediente o2) {
	return (o1.getNombre().compareTo(o2.getNombre())); 
	}
}
