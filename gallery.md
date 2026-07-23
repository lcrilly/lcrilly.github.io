---
layout: page
title: Gallery
permalink: /gallery/
---

A few photos of life at Litlington Pre-school.

{% assign gallery_extensions = "jpg,jpeg,png,gif,webp" | split: "," %}
{% assign gallery_files = site.static_files | where_exp: "f", "f.path contains '/assets/gallery/'" %}
{% assign gallery_images = "" | split: "" %}
{% for f in gallery_files %}
  {% assign gallery_ext = f.extname | downcase | remove: "." %}
  {% if gallery_extensions contains gallery_ext %}
    {% assign gallery_images = gallery_images | push: f %}
  {% endif %}
{% endfor %}
{% assign gallery_images = gallery_images | sort: "name" %}

<div class="gallery-grid">
  {%- for image in gallery_images -%}
  <a href="#gallery-{{ forloop.index }}" class="gallery-thumb">
    <img src="{{ image.path | relative_url }}" alt="Litlington Pre-school gallery photo {{ forloop.index }}" loading="lazy">
  </a>
  {%- endfor -%}
</div>

{% for image in gallery_images %}
<div id="gallery-{{ forloop.index }}" class="lightbox">
  <a href="#_" class="lightbox-backdrop" aria-hidden="true" tabindex="-1"></a>
  <a href="#_" class="lightbox-close" aria-label="Close">&times;</a>
  <img src="{{ image.path | relative_url }}" alt="Litlington Pre-school gallery photo {{ forloop.index }}">
</div>
{% endfor %}
