self.addEventListener('install', function(e) {
  console.log('[Service Worker] Installed]')
});

self.addEventListener('fetch', function(event) {
  console.log('[Service Worker] Fetching '+event.request.url);
  event.respondWith(
    caches.match(event.request).then(function(response) {
      if (response) {
        return response;
      }
      return fetch(event.request);
    })
  );
});