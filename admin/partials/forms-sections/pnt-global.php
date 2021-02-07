<div id="pnt-global" class="pnt-content col-12">
    <section id="pnt-global-body" class="my-3">
        <div class="pnt-sec-title btn btn-block text-white mb-3 bg-primary">
            <h5>
                <span><strong>Body</strong></span>
            </h5>
        </div>

        <div class="pnt-sec-configs">  

            <!-- Input -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <h6><strong>Texto</strong></h6>
                </div>
                <div class="col-md-8">
                    <input class="form-control" type="text" value="" id="">
                </div>
            </div>

            <!-- Textarea -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <h6><strong>Texto</strong></h6>
                </div>
                <div class="col-md-8">
                    <textarea name="" class="form-control"></textarea>
                </div>
            </div>

            <!-- Input media -->
            <div class="row mb-3">
                <div class="col-md-4">
                    <h6><strong>Texto</strong></h6>
                </div>
                <div class="col-md-8 pnt-input-media d-flex">
                    <button class="btn btn-secondary" type="button" data-media="pnt-image">
                    <i class="fas fa-image"> Subir archivo</i>
                    </button>
                    <input type="text" id="pnt-image" name="" value="">
                    <span class="pnt-media-remove" data-media-remove="pnt-image" style="">
                    <i class="fas fa-times"></i>
                    </span>
                </div>

            </div>
            <div class="row mb-3">
                <div class="col-md-4"></div>
                <div class="col-md-8 pnt-media-preview pnt-image">
                    <img class="img-thumbnail" style="width: 200px" src="" alt="">
                </div>
            </div>
            
        </div>
    </section>

    <?php

    $sectionBody = [
        'textLogo' => [
            'type'   => 'text',
            'title'  => 'Texto',
            'value'  => ''
        ]
    ];
        echo $this->formBuilder->addSection('global', 'body', 'body', $sectionBody );
    ?>
</div>