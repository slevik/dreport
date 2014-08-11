# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'ready page:load', ->
  $('#pr_module_project_id').change ->
    $('.modules-settings').sortable
      axis: 'y'
      update: ->
      	$.post($(this).data('update-url'), $(this).sortable('serialize'))

  $('#filter-project').change ->
  	id = $(this).find(':selected').attr('id')
  	if (id)
      input = $("<input>").attr("type", "hidden").attr("name", "project_id").val(id);
      $('form.filter').append($(input));
      this.form.submit()
    else 
      this.form.submit()

