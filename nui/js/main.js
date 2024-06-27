let InMenu = false

$(document).ready(function() {
    window.addEventListener('message', function(event) {
        const Data = event.data;
        switch (Data.Action) {
            case "SetVisibility":
                InMenu = Data.Bool;
                 $(".bottom-parts-item-wrapper").empty();
                Data.Bool ? $('body').fadeIn() : $('body').fadeOut();
                break;

            case 'addMods':
                $('.bottom-parts-item-wrapper').append(`
                <div class="bottom-parts-item id='${Data.Id}'">
                     <div class="bottom-parts-image-wrapper" onclick="SelectMode('${Data.Id}')"> 
                       <div class="bottom-parts-image">
                           <img src='${Data.Img}' alt=""></div>
                       <div class="bottom-parts-image-desc">
                             <div>${Data.Label}</div>
                             <div>${Data.Description}</div>
                      </div>
                     </div>
                        <div class="bottom-parts-item-buttom-wrapper-selector">
                            Open Selection
                           <i class="fa-solid fa-arrow-right"></i>
                     </div>`);
                break;
           case 'addItems':
            console.log(Data.Id)
                $('.bottom-parts-item-wrapper').append(`
              <div id='${Data.Id}' class='bottom-parts-item'>
                       <div class="bottom-parts-image-wrapper" onclick='SelectItem(\`${JSON.stringify(Data).replace(/\\/g, '\\\\').replace(/'/g, "\\'")}\`)'> 
                       <div class="bottom-parts-image">
                           <img src='${Data.Img}' alt=""></div>
                       <div class="bottom-parts-image-desc">
                             <div>${Data.Label}</div>
                             <div>${Data.Description}</div>
                      </div>
                     </div>
                        <div class="bottom-parts-item-buttom-wrapper">
                         <div>${Data.InStock ? Data.InStock : 'In stock'}</div>
                         <div>$${Data.Price}</div>
                    </div>`);
          break
          case "emptyall":
            $(".l-items").empty();
            break
            case "emptyitem":
                // bottom-parts-item-wrapper
            $(".bottom-parts-item-wrapper").empty();
            break
        }
    });
});


function SelectMode(id) {
    $(".l-item").removeClass("active");
    $("#" + id).addClass("active");
    $(".bottom-parts-item-wrapper").empty();
    console.log(id)
    $.post(`https://${GetParentResourceName()}/SellectId`, JSON.stringify({ id: id }));
  }


  function SelectItem(Data) {
    // Parse the DataString back to an object
    const parsedData = JSON.parse(Data);
  
    console.log(parsedData);
    $.post(`https://${GetParentResourceName()}/SellectItem`, JSON.stringify({ id: parsedData.Id }));

    $('.right-side-cart-menu-cart-items').append(`
        <div class="right-side-cart-menu-card">
          <div class="right-side-cart-menu-card-wrapper">
            <div style="border:1px solid #dbdbdb; height:3.5vh; width:3.5vh; display:inline-block; margin-right: 1vh; opacity: 70%; display: flex; justify-content: center; align-items: center;">
              <img src="${parsedData.Img}" style="width: 100%; height: 90%; object-fit: contain">
            </div>
            <div style="display: flex; flex-direction: column;">
              <span style="font-size: 1.3vh;">${parsedData.Label}</span>
              <span style="font-size: 1vh; color: #d4d4d4;">$${parsedData.Price}</span>
            </div>
          </div>
          <div class="svgdas ddd"></div>
        </div>
      `);

    let currentTotal = parseFloat($('.right-side-cart-checkout-description div:last-child').text().substring(1));
    let newTotal = currentTotal + parsedData.Price;
    $('.right-side-cart-checkout-description div:last-child').text(`$${newTotal}`);
}
document.querySelector('.bottom-parts-item-wrapper').addEventListener('wheel', function(e) {
  e.preventDefault();
  this.scrollLeft += e.deltaY;
});

$(document).on("keydown", function(event) {
    switch (event.keyCode) {
        case 87: // W
            moveCamera(0, 0, 0.5);
            break;
        case 83: // S
            moveCamera(0, 0, -0.5);
            break;
        case 65: // A
            moveCamera(-10, 0);
            break;
        case 68: // D
            moveCamera(10, 0);
            break;
        case 69: // Q
            moveCamera(0, -0.5);
            break;
        case 81: // E
            moveCamera(0, 0.5);
            break;
        case 27: // ESC
            closeMenu();
            break;
    }
});

function moveCamera(angleOffset, radiusOffset = 0, verticalOffset = 0) {
    $.post('https://mercy-hayes/move_camera', JSON.stringify({
        angle: angleOffset,
        radius: radiusOffset,
        vertical: verticalOffset
    }));
}

function closeMenu() {
    $('.right-side-cart-menu-cart-items').empty()
    $.post("https://mercy-hayes/close");
}
