class Computer < ApplicationRecord
    mount_uploader :image, ImageUploader
    belongs_to :user, optional: true

    validates :title, :price, presence: true
    validates :title, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed." }
    



    CASE = %w{ NZXT Cooler_Master Corsair Phanteks }
    MOTHERBOARD = %w{ EVGA ASRock ASUS MSI Gigabyte}
    POWERSUPPLY = %w{ Antec EVGA Corsair XFX }
    GPU = %w{ Gigabyte_GTX_1080 NVIDIA_GTX_1080 ASUS_Radeon_RX_580 MSI_RX_VEGA_64}
    CPU = %w{ Intel_Core_i7-8700K AMD_Ryzen_2600 AMD_Threadripper_1950X Intel_Core_i9-7900X}
    HARDDRIVE = %w{ Samsung_860_Pro  Seagate_Barracuda_7200 Crucial_MX500}
    MEMORY = %w{ Corsair_Vengeance GSkill_Ripjaws Kingston_HyperX_Fury }
    FINISH = %w{ Black White Navy Blue Red Clear Satin Yellow Seafoam }
    
end
