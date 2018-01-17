package unitTesting;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.Convenzione;
import dao.ConvenzioneDaoImpl;

public class TestApprovazioneConvenzione {

	/* Un'approvazione di convenzione pu� essere divisa in:
	 * 
	 * partita iva esiste:
	 * partita iva � errata:
	 */

	/** Test Approvazione Convenzione // Avvenuta
	 * 
	 * @author Luca Lamberti, Simone Torluccio, Francesco D'Auria
	 * */


	@Test
	public void testApprovazioneConvenzioneAvvenuta() {

		Convenzione convenzione= new Convenzione();
		ConvenzioneDaoImpl convenzioneDAO = new ConvenzioneDaoImpl();


		/*Partita iva di un'azienda gi� esistente */
		convenzione.setP_iva("0983732387");

		/* E-mail di chi approva la convenzione */
		convenzione.setEmail("fverdi@unisa.it");

		convenzione.setStato("in attesa");

		convenzioneDAO.invioRichiestaConvenzione(convenzione, convenzione.getEmail(), convenzione.getP_iva());

		assertEquals(true, convenzioneDAO.approvazioneRichiestaConvenzione(convenzione.getP_iva()));
	}

	/** Test Approvazione Convenzione // Fallita
	 * 
	 * @author Luca Lamberti, Simone Torluccio, Francesco D'Auria
	 * */


	@Test
	public void testApprovazioneConvenzioneFallita() {

		ConvenzioneDaoImpl convenzioneDAO = new ConvenzioneDaoImpl();

		/* Inserisco un a partita iva che non esiste */
		assertEquals(false, convenzioneDAO.approvazioneRichiestaConvenzione("0"));

	} 
}
