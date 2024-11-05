# Hash table of semesters and corresponding subjects with the format "course-code - course-name"
$semesters = @{
    "Semester 1" = "CSE111 - Orientation to Computing-I", "CSE326 - Internet Programming Laboratory", "INT108 - Python Programming", "MEC135 - Basics of Mechanical Engineering", "MTH174 - Engineering Mathematics", "PES318 - Soft Skills-I", "PHY110 - Engineering Physics"
    "Semester 2" = "CHE110 - Environmental Studies", "CSE101 - Computer Programming", "CSE121 - Orientation to Computing-II", "CSE320 - Software Engineering", "ECE249 - Basic Electrical and Electronics Engineering", "ECE279 - Basic Electrical and Electronics Laboratory", "INT306 - Database Management Systems", "MTH401 - Discrete Mathematics", "PEL130 - Advanced Communication Skills-I"
    "Semester 3" = "CSE202 - Object Oriented Programming", "CSE205 - Data Structures and Algorithms", "CSE211 - Computer Organization and Design", "CSE306 - Computer Networks", "CSE307 - Internetworking Essentials", "CSE316 - Operating Systems", "CSE325 - Operating Systems Laboratory", "GEN231 - Community Development Project", "PEL136 - Advanced Communication Skills-II"
    "Semester 4" = "CSE310 - Programming in Java", "CSE408 - Design and Analysis of Algorithms", "INT254 - Fundamentals of Machine Learning", "INT354 - Machine Learning-I", "INT404 - Artificial Intelligence", "PEA307 - Advanced Analytical Skills-I"
    "Semester 5" = "ACC304 - Cost Accounting", "CSE322 - Formal Languages and Automata Theory", "INT344 - Natural Language Processing", "INT423 - Machine Learning-II", "PEA308 - Advanced Analytical Skills-II", "PEV113 - Verbal Ability", "CSE443 - Seminar on Summer Training"
    "Semester 6" = "CSE332 - Industry Ethics and Legal Issues", "CSE393 - Online Academic Course", "INT345 - Computer Vision", "INT221 - MVC Programming", "INT312 - Big Data Fundamentals", "PEV114 - Advanced Verbal Ability"
    "Semester 7" = "CSE447 - Industry Co-op Project-I", "CSE406 - Advanced Java Programming", "INT422 - Deep Learning", "CSE339 - Capstone Project-I", "Open Minor Elective"
    "Semester 8" = "CSE448 - Industry Co-op Project-II", "CSE403 - Network Security and Cryptography", "CSE439 - Capstone Project-II", "CSE435 - Comprehensive Seminar", "Open Minor Elective"
}

# Loop through each semester and create directories
foreach ($semester in $semesters.Keys) {
    # Create the directory for the semester
    New-Item -ItemType Directory -Path $semester

    # Loop through each subject in the semester and create the corresponding directory in the format "course-code - course-name"
    foreach ($subject in $semesters[$semester]) {
        New-Item -ItemType Directory -Path "$semester\$subject"
    }
}

Write-Host "All directories created successfully!"