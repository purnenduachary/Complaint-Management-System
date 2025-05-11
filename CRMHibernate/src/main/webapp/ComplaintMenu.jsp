<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Complaint Dashboard</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom animation */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .fade-in-up {
            animation: fadeInUp 1s ease-out both;
        }

        /* Bokeh-style gradient dots */
        .bokeh {
            position: absolute;
            width: 300px;
            height: 300px;
            background: radial-gradient(circle, rgba(94,234,212,0.4) 0%, rgba(165,180,252,0.2) 100%);
            filter: blur(90px);
            border-radius: 50%;
            animation: move 10s ease-in-out infinite alternate;
        }

        .bokeh:nth-child(1) { top: 10%; left: 15%; }
        .bokeh:nth-child(2) { bottom: 20%; right: 20%; }

        @keyframes move {
            0% { transform: translateY(0) scale(1); }
            100% { transform: translateY(20px) scale(1.1); }
        }
    </style>
</head>
<body class="relative min-h-screen flex items-center justify-center bg-gradient-to-br from-teal-200 to-indigo-300 overflow-hidden">

    <!-- Blurred background gradients -->
    <div class="bokeh"></div>
    <div class="bokeh"></div>

    <!-- Glassmorphism Card -->
    <div class="backdrop-blur-lg bg-gradient-to-br from-amber-50 to-amber-100 border border-white/20 rounded-3xl shadow-xl p-10 w-full max-w-md z-10 fade-in-up">
        <h1 class="text-3xl font-extrabold text-indigo-800 text-center mb-8 drop-shadow-sm">Complaint Dashboard</h1>

        <div class="space-y-5">
            <a href="ComplaintAdd.jsp"
               class="block w-full text-center py-3 rounded-xl bg-teal-500/80 text-white font-semibold shadow-md hover:bg-teal-600 transition-all duration-300 hover:scale-105 hover:shadow-lg">
                📝 Register Complaint
            </a>

            <a href="ComplaintShow.jsp"
               class="block w-full text-center py-3 rounded-xl bg-indigo-500/80 text-white font-semibold shadow-md hover:bg-indigo-600 transition-all duration-300 hover:scale-105 hover:shadow-lg">
                📋 View All Complaints
            </a>

            <a href="SearchComplaint.jsp"
               class="block w-full text-center py-3 rounded-xl bg-purple-500/80 text-white font-semibold shadow-md hover:bg-purple-600 transition-all duration-300 hover:scale-105 hover:shadow-lg">
                🔍 Search Complaint
            </a>
        </div>
    </div>

</body>
</html>
