  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    <!-- 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="card">
  <div class="card-body">
    <h5 class="card-title">Your Performance Reviews</h5>

    <c:if test="${not empty reviews}">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Date</th>
            <th>Reviewer</th>
            <th>Strengths</th>
            <th>Improvement Area</th>
            <th>Rating</th>
            <th>Comments</th>
          </tr>
        </thead>
        <tbody>
          <c:forEach items="${reviews}" var="r">
            <tr>
              <td>${r.reviewDate}</td>
              <td>${reviewerNames[r.reviewerId]}</td>
              <td>${r.strengths}</td>
              <td>${r.improvementArea}</td>
              <td><span class="badge bg-success">${r.finalRating}</span></td>
              <td>${r.comments}</td>
            </tr>
          </c:forEach>
        </tbody>
      </table>
    </c:if>

    <c:if test="${empty reviews}">
      <p>No performance reviews available yet.</p>
    </c:if>
  </div>
</div>
	
</body>
</html>
 -->
 
 <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Performance Reviews</title>
<!-- Tailwind CDN -->
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="bg-gray-100 text-gray-800 min-h-screen flex items-center justify-center p-6">

  <div class="bg-white rounded-2xl shadow-xl w-full max-w-6xl p-8">
    <h1 class="text-2xl font-bold mb-6 text-blue-700 border-b pb-2">Your Performance Reviews</h1>

    <c:if test="${not empty reviews}">
      <div class="overflow-x-auto">
        <table class="min-w-full table-auto border border-gray-300 rounded-lg overflow-hidden">
          <thead class="bg-blue-100 text-blue-900">
            <tr>
              <th class="px-4 py-2 border">Date</th>
              <th class="px-4 py-2 border">Reviewer</th>
              <th class="px-4 py-2 border">Strengths</th>
              <th class="px-4 py-2 border">Improvement Area</th>
              <th class="px-4 py-2 border">Rating</th>
              <th class="px-4 py-2 border">Comments</th>
            </tr>
          </thead>
          <tbody class="bg-white">
            <c:forEach items="${reviews}" var="r">
              <tr class="hover:bg-gray-50 transition">
                <td class="px-4 py-2 border">${r.reviewDate}</td>
                <td class="px-4 py-2 border">${reviewerNames[r.reviewerId]}</td>
                <td class="px-4 py-2 border">${r.strengths}</td>
                <td class="px-4 py-2 border">${r.improvementArea}</td>
                <td class="px-4 py-2 border">
                  <span class="inline-block bg-green-200 text-green-800 text-sm font-semibold px-3 py-1 rounded-full">${r.finalRating}</span>
                </td>
                <td class="px-4 py-2 border">${r.comments}</td>
              </tr>
            </c:forEach>
          </tbody>
        </table>
      </div>
    </c:if>

    <c:if test="${empty reviews}">
      <p class="text-gray-600 mt-4">No performance reviews available yet.</p>
    </c:if>
  </div>

</body>
</html>