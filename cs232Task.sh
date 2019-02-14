curl -fLo "result.pdf" "https://ktu.edu.in/eu/att/attachments.htm?download=file&id=G9JU3qvNaL1Bbd97S4x8QAIqBvHCL9A4lNbTXzgGtuc%3D"
pdftotext -nopgbrk result.pdf
grep --no-group-separator -A3 'CHN17CS' result.txt > result_CS_Only.txt
tr '\n' ' ' < result_CS_Only.txt > result_no_newline
sed 's/\ CHN/\nCHN/g' result_no_newline > result_one_per_line
curl -fLo "s4d_student_details" "http://192.168.0.2/s4d/s4d.txt"
grep "CHN" s4d_student_details | awk '{s=""; for (i=3; i<=NF; i++) s=s $i " "; print s }' | sed '/^L.*/d' > s4d_student_registor_number_and_name
