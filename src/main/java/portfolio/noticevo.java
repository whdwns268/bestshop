package portfolio;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class noticevo {
	int nidx,nviews;
	String nwriter,ntitle,nnotice,nprint;
	String nfilename;
	Date nupdate;
	String[] nidxArray;
}
