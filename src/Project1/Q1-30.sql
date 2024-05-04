select instructorName,courseName
    from instructor i
    INNER JOIN course_instructor ci ON ci.instructorId=i.instructorId
    INNER JOIN course c On c.courseId=ci.courseId;