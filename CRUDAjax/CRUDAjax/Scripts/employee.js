/// <reference path="jquery-1.9.1.intellisense.js" />
//Load Data in Table when documents is ready
$(document).ready(function () {
    GetCategory();
});

//Load Data function
function GetCategory() {
    $.ajax({
        url: "/Home/ListCategory",
        type: "GET",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            var html = '';
            $.each(result, function (key, item) {
                html += '<tr>';
                html += '<td>' + item.SrNo + '</td>';
                html += '<td>' + item.CategoryName + '</td>';
                html += '<td>' + item.Status + '</td>';
                html += '<td><a href = "#" onclick="return GetbyId(' + item.CategoryId + ')" style="align="left" valign="top">Edit</a></td >';
                html += '<td><a href = "#" onclick = "return Delete(' + item.CategoryId + ')" style=" align="center" valign="top" ><img src="../Images/icon-bin.jpg" alt="" width="25" height="25" border="0" align="absmiddle" /></a ></td > ';
                html += '</tr>';
            });
            $('.tbody').html(html);
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

//Add Data Function 
function Add() {
    if ($("#CategoryName").val() == '') {
        toastr.warning("Please Enter Category Name");
        return;
    }
    var empObj = {};
    empObj.CategoryName = $("#CategoryName").val();
    if ($('#ChkStatus').is(':checked')) {
        empObj.Status = 1;
    }
    else {
        empObj.Status = 0;
    }
    $.ajax({
        url: "/Home/AddCategory",
        data: JSON.stringify(empObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            if (result.Success) {
                //$('#btnUpdateImg').html('Submit').attr('disabled', false);
                //toastr.success("Image Successfully Uploaded", "Success");
                $('#CategoryName').val('');
                GetCategory();
            }
            else {
                $('#btnUpdateImg').html('Save').attr('disabled', false);
                //toastr["warning"](Response.Message, "Warning");
            }
        },
        error: function (errormessage) {
            $('#btnAdd').html(errormessage.responseText).attr('disabled', false);
            //toastr["warning"](err.statusText, "Warning");
        }
    });
}

//Function for getting the Data Based upon Category Id

function GetbyId(CategoryId) {
    $('#CategoryName').css('border-color', 'lightgrey');
    $('#ChkStatus').css('border-color', 'lightgrey');
    var customerId = CategoryId;
    $.ajax({
        url: "/Home/GetCategorybyId",
        type: "POST",
        data: '{CategoryId: ' + customerId + '}',
        contentType: "application/json;charset=UTF-8",
        dataType: "json",
        success: function (result) {
            $('#CatId').val(result.CategoryId);
            $('#CategoryName').val(result.CategoryName);
            var Status = result.Status;
            if (Status == 1) {
                $('#ChkStatus').prop("checked", true);
            }
            $('#btnUpdate').show();
            $('#btnAdd').hide();
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
    return false;
}

//function for updating Category's record
function Update() {
    if ($("#CategoryName").val() == '') {
        toastr.warning("Please Enter Category Name");
        return;
    }
    var empObj = {};
    empObj.CategoryId = $("#CatId").val();
    empObj.CategoryName = $("#CategoryName").val();
    if ($('#ChkStatus').is(':checked')) {
        empObj.Status = 1;
    }
    else {
        empObj.Status = 0;
    }
    $.ajax({
        url: "/Home/UpdateCategory",
        data: JSON.stringify(empObj),
        type: "POST",
        contentType: "application/json;charset=utf-8",
        dataType: "json",
        success: function (result) {
            if (result.Success) {
                //$('#btnUpdateImg').html('Submit').attr('disabled', false);
                //toastr.success("Image Successfully Uploaded", "Success");
                GetCategory();
                $('#btnUpdate').hide();
                $('#btnAdd').show();
                $('#CategoryName').val("");
                $('#ChkStatus').prop("checked", false);
            }
            else {
                $('#btnUpdateImg').html('Save').attr('disabled', false);
                //toastr["warning"](Response.Message, "Warning");
            }
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

//function for deleting Category's record
function Delete(CategoryId) {
    Swal.fire({
        title: 'Do you want Delete this Category?',
        showDenyButton: true,
        confirmButtonText: 'yes',
        denyButtonText: 'No',
    }).then((result) => {
        if (result.isConfirmed) {
            var customerId = CategoryId;
            $.ajax({
                url: "/Home/DeleteCategory",
                type: "POST",
                data: '{CategoryId: ' + customerId + '}',
                contentType: "application/json;charset=UTF-8",
                dataType: "json",
                success: function (result) {
                    GetCategory();
                },
                error: function (errormessage) {
                    alert(errormessage.responseText);
                }
            });
        }
        else if (result.isDenied) {
            Swal.fire('No', '', 'info');
        }

    })
}