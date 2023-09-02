// Function to generate the certificate image and trigger download
function generateCertificate() {
    html2canvas(document.querySelector(".certificate")).then(function(canvas) {
        var link = document.createElement("a");
        link.href = canvas.toDataURL("image/png");
        link.download = "certificate.png";
        link.click();
    });
}

// Attach the generateCertificate function to the button click event
document.getElementById("generateCertificate").addEventListener("click", generateCertificate);
/**
 * 
 */