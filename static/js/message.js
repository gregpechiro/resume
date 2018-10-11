$(document).ready(function() {

    // initialize empty message cache
    var message = {};

    $('.message').click(function() {
        var $this = $(this);
        var id = $this.attr('data-id');
        // chack message cache for data
        if (message.hasOwnProperty(id)) {
            // ganerate modal content from cache
            setModalContent(message[id]);
            $('#messageModal').modal('show');
            return;
        }
        // no cache; request message data from rest server
        $.ajax({
            'url': baseURL + id,
            'method': 'GET',
            'success': function(data) {
                // ganerate modal content from response data
                setModalContent(data);
                $('#messageModal').modal('show');
                // save response data into message cache
                message[id] = data;
                $this.removeClass('table-secondary');
                $this.removeClass('font-weight-bold');
            },
            'error': function(e,d) {
                console.log(e);
                console.log(d);
            }
        });

    });

    // reset experience modal on close
    $('#messageModalBody').on('hidden.bs.modal', function () {
        resetModalContent();
    });

    function setModalContent(message) {
        resetModalContent();
        $('#messageModalTitle').html(message.subject);
        $('#messageModalName').html('<strong><u>Name</u></strong>: ' + message.name);
        $('#messageModalEmail').html('<strong><u>Email</u></strong>: ' + message.email);
        $('#messageModalBody').html('<strong><u>Message</u></strong>: \n' + message.body);
    }

    function resetModalContent() {
        $('#messageModalTitle').html('');
        $('#messageModalName').html('');
        $('#messageModalEmail').html('');
        $('#messageModalBody').html('');
    }

});
