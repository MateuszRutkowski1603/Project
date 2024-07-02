$(document).ready(function() {
    $(document).on("click", ".confirm", function(e) {
        e.preventDefault();
        const form = $(this).closest('form');
        if (confirm('Czy na pewno chcesz usunąć to Ćwiczenie?')) {
            form.submit();
        }
    });
});