package manager;

import bean.ExampleFormularBean;

public class ExampleFormularDataManager {

    private ExampleFormularFakeManager fakeManager =
            new ExampleFormularFakeManager();

    public ExampleFormularBean getBean(String vorname,
                                       String nachname,
                                       int alter) {

        return fakeManager.createBean(vorname, nachname, alter);
    }

}