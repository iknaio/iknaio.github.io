---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: home
---
<section class="container-sm section-lead">
<div class="display-6 col-lg-8 col-md-10 col-xs-12 text-center">
We provide service for<br/> <a target=_blank href="https://graphsense.info">GraphSense</a> <br/>
the leading open source Cryptoasset Analytics Platform
</div>
</section>
<section class="container-sm">
<h2>Company</h2>
<hr/>
<div class="company-image mx-auto">
{% responsive_image path: assets/img/company.jpg %}
</div>
<div class="text-body">
Dr. Ross King and Dr. Bernhard Haslhofer, world leaders in the field of cryptocurrency-related data science, have joined forces to turn their research results into a <mark>revolutionary forensics</mark> solution, the GraphSense Cryptoasset Analytics Platform. GraphSense has been developed to make a significant contribution to <mark>fraud prevention</mark> and <mark>risk-monitoring</mark>, making the use of cryptocurrency safer.
</div>

<div class="text-center collapse show" id="company">
<a class="btn btn-lg btn-info" data-bs-toggle="collapse" href="#company"  role="button" aria-expanded="false" aria-controls="company">
Read on
</a>
</div>

<div class="text-body collapse" id="company">
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. 
</div>
</section>

<section class="packages" id="packages">
    <div class="container-sm">
        <h2>Packages</h2>
        <hr>
        <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
          <div class="carousel-inner">
            <div class="carousel-item active">
              {% include package1 %}
            </div>
            <div class="carousel-item">
              <img src="..." class="d-block w-100" alt="...">
            </div>
            <div class="carousel-item">
              <img src="..." class="d-block w-100" alt="...">
            </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
          </button>
        </div>
    </div>
</section>
