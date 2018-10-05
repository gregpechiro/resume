$(document).ready(function() {

    // scroll on navbar link click
    $('.scroll').click(function(e) {
        // prevent links default action
        e.preventDefault();
        // close the nav menu on mobile
        $('#navbarSupportedContent').collapse('hide');
        // get the scroll location id, top position, and total body height
        var div = $($(this).attr('href'));
        var top = div.offset().top;
        var bodyHeight = $('body').height();
        if (top < 60) {
            // top is less than 60; scroll to top
            $('html, body').animate({
                scrollTop: top
            }, 800, 'easeOutExpo');
        } else if ((bodyHeight - top + 60) < window.innerHeight) {
            // top is bellow available space; scroll to the bottom of the page
            $('html, body').animate({
                scrollTop: bodyHeight - window.innerHeight
            }, 800, 'easeOutExpo');
        } else {
            // scroll to the top of the location plus the navbar height
            $('html, body').animate({
                scrollTop: $(div).offset().top - 60
            }, 800, 'easeOutExpo');
        }
    });

    // scroll on skill accordian click
    $('.skill').click(function() {
        $('html, body').animate({
            scrollTop: $('#skills').offset().top - 60
        }, 800, 'easeOutExpo');
    });

    // initialize empty experience cache
    var experience = {};

    // reset experience modal on close
    $('#experienceModalBody').on('hidden.bs.modal', function (e) {
        resetModalContent();
    });

    // get data, create content, and fill out experience modal on experience year click
    $('.experience-year').click(function() {
        var id = $(this).attr('data-id');
        // chack experience cache for data
        if (experience.hasOwnProperty(id)) {
            // ganerate modal content from cache
            genModalContent(experience[id]);
            $('#experienceModal').modal('show');
            return;
        }
        // no cache; request experience data from rest server
        $.ajax({
            'url': '/rest/resume/experience/' + id,
            'method': 'GET',
            'success': function(data) {
                // ganerate modal content from response data
                genModalContent(data);
                $('#experienceModal').modal('show');
                // save response data into experience cache
                experience[id] = data;
            },
            'error': function(e,d) {
                console.log(e);
                console.log(d);
            }
        });

    });

    // generate modal inner content from experience data
    function genModalContent(data) {
        // check for empty data
        if (data == {} || (data.DESCRIPTION == '' && data.EDUCATION == '')) {
            // reset modal content
            resetModalContent();
            return;
        }
        // remove all modal content
        $('#experienceModalBody').html('');
        // create ul tabs and div pane
        var ul = $('<ul class="nav nav-tabs"></ul>');
        var divPane = $('<div class="tab-content" id="tabContent"></div>');
        if (data.DESCRIPTION !== '') {
            // create description tab and pane
            ul.append('<li id="description-li" class="nav-item">' +
                '<a class="nav-link active text-danger" id="description-tab" data-toggle="tab" href="#description-pane" role="tab" aria-controls="description-pane" aria-selected="true">Experience</a>' +
            '</li>')
            divPane.append('<div class="tab-pane fade show active" id="description-pane" role="tabpanel" aria-labelledby="description-tab">'+
                '<pre id="description-content" class="unstyled">' + data.DESCRIPTION + '</pre>' +
            '</div>')
        }
        if (data.EDUCATION !== '') {
            // create education tab and pane; set to active if description does not exist
            ul.append('<li id="education-li" class="nav-item">' +
                '<a class="nav-link text-danger' + ((data.DESCRIPTION == '') ? ' active' : '') + '" id="education-tab" data-toggle="tab" href="#education-pane" role="tab" aria-controls="education-pane" aria-selected="false">Education</a>' +
            '</li>')
            divPane.append('<div class="tab-pane fade' + ((data.DESCRIPTION == '') ? ' show active' : '') + '" id="education-pane" role="tabpanel" aria-labelledby="education-tab">' +
                '<pre id="education-content" class="unstyled">' + data.EDUCATION + '</pre>' +
            '</div>')
        }
        // append tab ul and div pane to modal body
        $('#experienceModalBody').append(ul);
        $('#experienceModalBody').append(divPane);
    }

    // set modal content to message on reset
    function resetModalContent() {
        $('#experienceModalBody').html('No More Available Information');
    }

});
