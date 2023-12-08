package portfolio;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class productvo {
	int pidx,pprice,pdiscount,pdisprice,pea;
	String pbig,psmall,pcode,pname,pexplain,pbuy,
	psold,pfile1,pfile2,pfile3,ptext,
	banner1,banner2,banner3,banner4,link1,link2,link3,link4,
	ad1_img,ad1_link,ad2_img,ad2_link;
	MultipartFile[] files;
	Date pdate;
	String[] pcodeArray;
}
