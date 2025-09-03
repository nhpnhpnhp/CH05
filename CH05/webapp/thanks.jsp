<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Survey Result</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <!-- Dùng lại CSS của trang survey -->
  <link rel="stylesheet" href="styles/survey.css" />
  <!-- Font (tùy chọn, giống trang survey) -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
  <div class="bg">
    <!-- Header giống survey -->
    <header class="site-header" role="banner">
      <div class="header-inner">
        <div class="brand">
          <img src="images/murachlogo.jpg" alt="Murach Logo" class="logo" />
          <div class="brand-text">
            <h1>Thank you!</h1>
            <p class="subtitle">We received your survey 🎉</p>
          </div>
        </div>
      </div>
    </header>

    <main class="container" role="main">
      <section class="card">
        <fieldset class="section">
          <legend>Your information</legend>

          <div class="grid">
            <div class="field span-2">
              <span class="label">First name</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.firstName ? '—' : param.firstName}
              </div>
            </div>

            <div class="field span-2">
              <span class="label">Last name</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.lastName ? '—' : param.lastName}
              </div>
            </div>

            <div class="field span-2">
              <span class="label">Email</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.email ? '—' : param.email}
              </div>
            </div>

            <div class="field span-2">
              <span class="label">Date of birth</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.dob ? '—' : param.dob}
              </div>
            </div>
          </div>
        </fieldset>

        <fieldset class="section">
          <legend>Survey</legend>

          <div class="grid">
            <div class="field span-2">
              <span class="label">Heard from</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.heardFrom ? '—' : param.heardFrom}
              </div>
            </div>

            <div class="field">
              <span class="label">Wants updates</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.wantsUpdates ? 'No' : 'Yes'}
              </div>
            </div>

            <div class="field">
              <span class="label">Email OK</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.emailOK ? 'No' : 'Yes'}
              </div>
            </div>

            <div class="field span-2">
              <span class="label">Preferred contact</span>
              <div class="input" style="pointer-events:none;">
                ${empty param.contactVia ? '—' : param.contactVia}
              </div>
            </div>
          </div>
        </fieldset>

        <div class="actions">
          <!-- Quay lại form (nếu dùng servlet mapping /survey) -->
          <form action="survey" method="get">
            <button class="btn" type="submit">Return to survey</button>
          </form>
          <!-- Hoặc chỉ cần history.back(); bỏ nếu không muốn -->
          <button class="btn" type="button" onclick="history.back()">Back</button>
          <p class="form-note">You can update your information and submit again.</p>
        </div>
      </section>

      <footer class="site-footer" role="contentinfo">
        <p>© <span id="y"></span> Murach. All rights reserved.</p>
      </footer>
    </main>
  </div>

  <script>
    document.getElementById('y').textContent = new Date().getFullYear();
  </script>
</body>
</html>
