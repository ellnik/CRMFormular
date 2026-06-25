package manager;

import bean.ExampleFormularBean;

public class ExampleFormularFakeManager {

    public ExampleFormularBean createBean(String vorname,
                                          String nachname,
                                          int alter) {

        ExampleFormularBean bean = new ExampleFormularBean();

        bean.setVorname(vorname);
        bean.setNachname(nachname);
        bean.setAlter(alter);

        return bean;
    }

}