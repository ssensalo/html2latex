import java.io.*; 
import java.util.*;

public class App {
            // Configuration is a class that returns customizable properties: it can be mocked to be injected during tests.
            // private static Configuration config;
            public static final String latexTag  = "\\documentclass{article}";
            public static final String htmlTag = "<!DOCTYPE html>";
    public static void main(String[] args) throws NoSuchElementException, FileNotFoundException {
            // Customizable parameter to retrieve URI
            // String listingFolder = config.getProperty("myApplication.listingFolder");
            File file = new File("D:/Projects/latex_replace/src/index2.txt");
            Scanner scan = new Scanner(file);
            try {
                scan.useDelimiter("\\z");
                String text = scan.nextLine();
                // System.out.println(scan.next()); // This throws an exception, java.util.NoSuchElementException because its trying to access the file beyond its maximum limit.
                // System.out.println(scan.hasNext()); // Solution is to use hasNext() or hasMoreElements(), these check if the next position is filled or not before they read or access it. 
                String s1 = scan.next(); 
                if(text.equals(htmlTag)){ 
                  System.out.println(html2latex(s1));
                } else if (text.equals(latexTag)) {
                  System.out.println(latex2html(s1));
                } else {
                  System.out.println("File Format Not Recognized");
                }   
            } catch (Exception e) {
                System.out.println("ERROR: "+e);
            }finally{
               scan.close();
            }
    }
    public static String html2latex(String readFile) {
            return readFile.replace(htmlTag, "").replace("<html>", latexTag).replace("<head>", "\\usepackage{xcolor}").replace("<title>", "").replace("My first HTML document.", "").replace("</title>", "").replace("</head>", "").replace("<body>", "\\begin{document}").replace("<p>", "").replace("</p>", "\\par").replace("<strong>", "\\textbf{").replace("</strong>","}").replace("<i>", "\\emph{").replace("</i>", "}").replace("<mark>", "\\textcolor{green}{").replace("</mark>", "}").replace("</body>", "\\end{document}").replace("</html>", "");
    }
    public static String latex2html(String readFile) {
        //     TODO:Implement latex2html functionality.
            return readFile;
    }
    
}
