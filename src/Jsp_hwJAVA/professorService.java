package Jsp_hwJAVA;

public class professorService {
    static final String 학번_필수 = "학번을 입력하세요";
    static final String 이름_필수 = "이름을 입력하세요";
    static final String 학년_필수 = "학년을 입력하세요";
    static final String 학번_중복 = "학번이 중복됩니다";


    public static String validate(Professor professor) throws Exception {
        if (StringUtil.isEmptyOrBlank(professor.getStudentNumber()))
            return 학번_필수;
        if (StringUtil.isEmptyOrBlank(professor.getName()))
            return 이름_필수;
        if (professor.getYear() == 0)
            return 학년_필수;
        Professor professor1 = professorDAO.findByStudentNumber(professor.getStudentNumber());
        if (professor1 != null && professor1.getId() != professor.getId())
            return 학번_중복;
        return null;
    }

    public static String insert(Professor professor) throws Exception {
        String errorMessage = validate(professor);
        if (errorMessage != null) return errorMessage;
        professorDAO.insert(professor);
        return null;
    }

    public static String update(Professor professor) throws Exception {
        String errorMessage = validate(professor);
        if (errorMessage != null) return errorMessage;
        professorDAO.update(professor);
        return null;
    }


}
