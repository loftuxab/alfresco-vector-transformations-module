if [ "$(whoami)" != "root" ]; then
        echo "*************************************"
        echo "You need to run this script with sudo"
        echo "*************************************"
        echo "Sorry, you are not root."
        exit 1
fi

wget https://www.ribbonsoft.com/archives/qcad/qcad-3.8.1-linux-x86_64.run
chmod +x qcad-3.8.1-linux-x86_64.run
./qcad-3.8.1-linux-x86_64.run
echo "Downloading Vector Transformations module wrappers..."
wget https://raw.githubusercontent.com/loftuxab/alfresco-vector-transformations-module/master/dwg-transform-support/dwg2bmp_alfresco_fallback -P ~/opt/qcad-3.8.1-linux-x86_64/
wget https://raw.githubusercontent.com/loftuxab/alfresco-vector-transformations-module/master/dwg-transform-support/dwg2svg_alfresco_fallback -P ~/opt/qcad-3.8.1-linux-x86_64/
echo "QCad installation completed."
