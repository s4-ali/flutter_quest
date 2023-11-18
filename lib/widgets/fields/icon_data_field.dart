import 'package:flutter/material.dart';

class IconDataField extends StatefulWidget {
  final void Function(IconData) onChanged;
  final IconData value;

  const IconDataField({
    super.key,
    required this.onChanged,
    required this.value,
  });

  @override
  State<IconDataField> createState() => _IconDataFieldState();
}

class _IconDataFieldState extends State<IconDataField> {
  final List<IconData> icons = [
    Icons.access_alarm,
    Icons.access_time,
    Icons.add_alarm,
    Icons.airplanemode_active,
    Icons.bluetooth,
    Icons.camera,
    Icons.directions_bike,
    Icons.email,
    Icons.face,
    Icons.golf_course,
    Icons.headset,
    Icons.image,
    Icons.laptop,
    Icons.account_balance_outlined,
    Icons.pets,
    Icons.shopping_cart,
    Icons.star,
    Icons.train,
    Icons.videocam,
    Icons.watch,
    Icons.zoom_in,
    Icons.wifi,
    Icons.account_balance_sharp,
    Icons.add_alert,
  ];

  bool isHovering = false;
  bool openIcons = false;
  IconData selectedIcon = Icons.select_all;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          hoverColor: Colors.transparent,
          onHover: (value) {
            setState(() {
              isHovering = value;
            });
          },
          onTap: () {
            setState(() {
              openIcons = !openIcons;
            });
          },
          child: Container(
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(
                  color: Color(isHovering ? 0xff0099FF : 0xff35363A), width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(6)),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        selectedIcon,
                        size: 20,
                      ),
                      SizedBox(width: 8),
                      Text(selectedIcon.toString()),
                    ],
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down,
                    size: 16,
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        openIcons
            ? Container(
                height: 297,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: Color(0xFF35363A)),
                child: GridView.builder(
                  itemCount: 24,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return GridTile(
                      child: Center(
                        child: InkWell(
                          onTap: () {
                            widget.onChanged(icons[index]);
                            selectedIcon = icons[index];
                          },
                          child: Icon(
                            icons[index],
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
