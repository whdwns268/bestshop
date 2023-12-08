package portfolio;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class smembervo {
    int sidx;
    String sid, spass, sname, smtel, stel, saddress, spoint, sadmail, sadsms, sstate, semail;
    String slevel, member_input;
    Date sleavedate, sjoindate, slastdate;
    String[] cksid;
}
