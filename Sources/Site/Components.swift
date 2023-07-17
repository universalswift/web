import Plot

extension Node where Context == HTML.BodyContext {
    static func landingPageIllustration() -> Self {
        .raw("""
        <svg class="logo-illustration" width="283" height="489" viewBox="0 0 283 489"><g fill="none" fill-rule="evenodd"><path class="plant" stroke="#535461" stroke-width="2" d="M173 478.9s19.9-33 49.8-42.5a61 61 0 0 0 31-21.7c3.6-5 6.7-10 9.2-15.5"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M280.5 394c-3.3 3-18.5 6.2-18.5 6.2s3.7-14.5 7-17.5 8.5-3 11.7.2a7.6 7.6 0 0 1-.2 11.1zM272 420.7c-4.7.9-20-4.5-20-4.5s12-10.3 16.6-11.2c4.7-.8 9.3 2 10.2 6.3 1 4.3-2 8.5-6.8 9.4zM239.5 449.3c-4.4-1.4-14.5-13.1-14.5-13.1s15.7-3.4 20.1-2c3 1 5.1 3.3 5.7 6.1.6 2.8-.4 5.8-2.8 7.6a9 9 0 0 1-8.5 1.4zM209.9 465.7c-4.7-.8-16.9-10.7-16.9-10.7s15-5.8 19.7-5c3 .3 5.6 2.3 6.7 5 1.1 2.6.6 5.7-1.4 7.9a9 9 0 0 1-8.1 2.8zM239 404.4c0 4.5 8.5 17.3 8.5 17.3s8.5-12.8 8.5-17.3c0-4.4-3.8-8-8.5-8a8.3 8.3 0 0 0-8.5 8zM204.4 423.7c1.4 4.2 13.6 14 13.6 14s4.1-14.6 2.7-18.8c-1.4-4.2-6.2-6.6-10.7-5.2-4.5 1.3-7 5.8-5.6 10zM173 447.7c.7 4.5 11 16.2 11 16.2s6.6-13.9 6-18.3c-.7-4.4-5-7.5-9.6-7-4.7.7-8 4.7-7.3 9.1z"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M280.5 394c-3.3 3-18.5 6.2-18.5 6.2s3.7-14.5 7-17.5 8.5-3 11.7.2a7.6 7.6 0 0 1-.2 11.1zM272 420.7c-4.7.9-20-4.5-20-4.5s12-10.3 16.6-11.2c4.7-.8 9.3 2 10.2 6.3 1 4.3-2 8.5-6.8 9.4zM239.5 449.3c-4.4-1.4-14.5-13.1-14.5-13.1s15.7-3.4 20.1-2c3 1 5.1 3.3 5.7 6.1.6 2.8-.4 5.8-2.8 7.6a9 9 0 0 1-8.5 1.4zM209.9 465.7c-4.7-.8-16.9-10.7-16.9-10.7s15-5.8 19.7-5c3 .3 5.6 2.3 6.7 5 1.1 2.6.6 5.7-1.4 7.9a9 9 0 0 1-8.1 2.8zM239 404.4c0 4.5 8.5 17.3 8.5 17.3s8.5-12.8 8.5-17.3c0-4.4-3.8-8-8.5-8a8.3 8.3 0 0 0-8.5 8zM204.4 423.7c1.4 4.2 13.6 14 13.6 14s4.1-14.6 2.7-18.8c-1.4-4.2-6.2-6.6-10.7-5.2-4.5 1.3-7 5.8-5.6 10zM173 447.7c.7 4.5 11 16.2 11 16.2s6.6-13.9 6-18.3c-.7-4.4-5-7.5-9.6-7-4.7.7-8 4.7-7.3 9.1z" opacity=".3"></path><path class="plant" stroke="#535461" stroke-width="2" d="M174 478s3.8-37.7 26.7-57.7a56.7 56.7 0 0 0 18.6-31.6A91.3 91.3 0 0 0 221 371"></path><path class="plant" fill="#FFAE00" fill-rule="nonzero" d="M235.3 359c-1.7 4-14.7 13-14.7 13s-2.8-15-1-19c1-2.8 3.6-4.8 6.7-5.2 3-.5 6 .7 8 3a7.7 7.7 0 0 1 1 8.2zM239.5 386.5C235.7 389 220 390 220 390s6.1-13.9 9.9-16.4c2.4-1.6 5.6-1.9 8.3-.7a8 8 0 0 1 4.8 6.5c.2 2.8-1.1 5.6-3.5 7.2zM221.2 425.5c-4.8.3-19.2-6.5-19.2-6.5s13-9 17.7-9.4c4.7-.4 8.9 2.9 9.3 7.2.4 4.4-3.1 8.3-7.9 8.7zM201.3 452.5c-4.6 1-20.3-3.4-20.3-3.4s11.3-11 16-12c3-.9 6.2 0 8.5 2 2.2 2 3 5 2.2 7.8-.9 2.8-3.3 4.9-6.4 5.6zM202.7 384c1.9 4 15.2 12.4 15.2 12.4s2.2-14.8.3-18.8c-2-4-6.9-5.7-11.1-4-4.3 1.8-6.2 6.4-4.4 10.4zM178.2 416c3.2 3.3 18.8 7.6 18.8 7.6s-2.6-14.6-5.8-17.9a9.1 9.1 0 0 0-8.2-2.6c-3 .6-5.6 2.6-6.6 5.3-1 2.6-.3 5.6 1.8 7.7zM160.3 449.7c2.4 3.8 16.7 10.5 16.7 10.5s.1-15-2.3-18.8a8.6 8.6 0 0 0-7.5-3.7c-3 0-5.7 1.6-7.2 4.1a7.5 7.5 0 0 0 .3 8z"></path><g fill-rule="nonzero" transform="translate(0 -1)"><ellipse class="floor" cx="112" cy="474.7" rx="94" ry="14.5"></ellipse><path fill="#B77B7F" d="M117 278.8v3l-5.3 177.5H103l4.3-177.6v-3.3z"></path><path fill="#DDA2A6" d="M170 429.3h-6.7l-100-.2H58l2.8-8.2h108.5z"></path><path fill="#000" d="M117 278.9v3.3h-10v-3.8z" opacity=".1"></path><path fill="#B77B7F" d="M105 275.6h17v5.6h-17z"></path><path fill="#DDA2A6" d="M78 274.7l-.3 2.5L56 482.7l-10-.4 23-205 .2-2.4zM180 482.3l-10 .4-21.7-205.5-.3-2.5 8.8.2.3 2.3z"></path><path fill="#000" d="M54.2 269h119.6c2.9 0 5.2 2.1 5.2 4.6v1H49v-1c0-2.5 2.3-4.6 5.2-4.6zM69.3 274.9l8.7-.2-.3 2.8H69zM105 274.6h17v2.8h-17zM157 277.5h-8.7l-.3-2.8 8.7.2z" opacity=".1"></path><g><path fill="#DDA2A6" d="M54.2 270.9h119.6c2.9 0 5.2 2 5.2 4.6v1H49v-1c0-1.2.5-2.4 1.5-3.3 1-.8 2.3-1.3 3.7-1.3zM116 5.2v48.3h-9V5.2a4 4 0 0 1 2.2-3.7 5 5 0 0 1 4.6 0 4 4 0 0 1 2.2 3.7z"></path><path fill="#DDA2A6" d="M119 52.7v16.7h-15V52.7c0-.5.2-1 .6-1.5a2 2 0 0 1 1.5-.6H117c1 0 2 1 2 2.1z"></path><ellipse cx="111" cy="60" fill="#B77B7F" rx="3" ry="2.8"></ellipse><path fill="#DDA2A6" d="M97 68.4h29v3.7H97z"></path><path class="canvas" fill="#F05137" d="M0 72.2h224v201.5H0z"></path></g><g fill="#FFF"><path class="ellipse" d="M141.8 136.6c1.4 0 4 .1 5.2 1.4 1.8 1.8 2.3 7.4-.8 16a95.9 95.9 0 0 1-22.3 32.9c-17 17-34.2 24.5-43.7 24.5-1.4 0-4-.1-5.2-1.4-1.8-1.8-2.3-7.4.8-16A95.9 95.9 0 0 1 98 161.2c17-17 34.2-24.5 43.7-24.5zm0-11c-14 0-33.9 10.3-51.4 27.8-24.1 24.2-34.5 53-23.1 64.3 3.1 3.2 7.5 4.6 12.9 4.6 14 0 33.9-10.2 51.4-27.7 24.1-24.2 34.5-53 23.1-64.3a17.6 17.6 0 0 0-12.9-4.6z"></path><path class="ellipse" d="M80.2 136.6c9.5 0 26.7 7.6 43.7 24.5a95.9 95.9 0 0 1 22.3 33c3 8.5 2.6 14.1.8 16-1.2 1.2-3.8 1.3-5.2 1.3-9.5 0-26.7-7.6-43.7-24.5a95.9 95.9 0 0 1-22.3-33c-3-8.5-2.6-14.1-.8-16 1.2-1.2 3.8-1.3 5.2-1.3zm-13-6.3c-11.3 11.3-1 40.1 23.2 64.3 17.5 17.5 37.5 27.7 51.4 27.7 5.3 0 9.8-1.4 13-4.6 11.3-11.3 1-40.1-23.2-64.3C114 136 94 125.7 80.2 125.7c-5.3 0-9.8 1.4-13 4.6z"></path><path class="swift" d="M120.6 177l.1-.4c1.5-5.8-2-12.6-8-16.1 2.6 3.5 3.8 7.8 2.7 11.5 0 .4-.2.7-.3 1a8 8 0 0 0-.5-.3s-6-3.7-12.4-10.1a77 77 0 0 0 7.5 9.4c-1.9-1-7.3-5-10.7-8l1.5 2c2.8 3.5 6.5 8 11 11.4-3.1 1.9-7.5 2-12 0a18 18 0 0 1-3-1.8c1.9 3 4.7 5.5 8.2 7 4.2 1.8 8.3 1.6 11.4 0l.4-.2c1.4-.8 4.4-1.6 6 1.5.3.7 1.1-3.2-1.9-7z"></path></g><path fill="#000" d="M63 420.9l-.9 8.4H57l2.7-8.4zM170 429.3h-7l-1-8.4h7.3z" opacity=".1"></path><g fill="#000" opacity=".1" transform="translate(97 1)"><path d="M10 48.7h9v3.7h-9z"></path><ellipse cx="14" cy="60" rx="3" ry="2.8"></ellipse><path d="M7 66.5h15v1.9H7zM0 69.4h29v3.7H0z"></path></g></g></g></svg>
        """)
    }
}

extension Node where Context == HTML.AnchorContext {
    static func logo() -> Node<HTML.AnchorContext> {
        .raw("""
        <svg class="logo" height="728" viewBox="0 0 728 728" width="728">
        	<g>
        		<path
        			d="m596.21917 82.0883799c10.574591 0 29.695445 1.3865177 38.967541 10.6609019 13.596162 13.5995192 16.987017 56.0102202-6.084984 120.1048222-28.494821 79.171616-89.821264 169.571843-168.252968 248.022907-127.784647 127.821648-257.346582 185.036429-329.062065 185.036429-10.574591 0-29.700903-1.382879-38.9729984-10.659083-13.5961627-13.599518-16.9870173-56.01204 6.0813449-120.11028 28.4948215-79.171617 89.8194455-169.575483 168.2475115-248.022908 127.790104-127.816189 257.352039-185.0309695 329.067522-185.0346086zm-.022995-82.0883799c-105.249405.003638-255.373645 77.2729199-387.14777 209.044885-181.8567689 181.85448-259.9047844 398.646485-174.3224533 484.230414 23.5688381 23.568777 57.0767155 34.724701 97.0766193 34.724701 105.249405 0 255.375464-77.27292 387.145951-209.050342 181.862226-181.852661 259.906604-398.644666 174.326091-484.2249566-23.568838-23.5687772-57.080353-34.7247014-97.078438-34.7247014z">
        		</path>
        		<path
        			d="m131.805384 82.0901995c71.703469 0 201.257608 57.2147805 329.045356 185.0400675 78.428852 78.445606 139.75773 168.845832 168.252837 248.017449 23.068594 64.09824 19.679524 106.508942 6.085044 120.104822-9.272188 9.274384-28.40233 10.660902-38.977027 10.660902-71.716203 0-201.2758-57.214781-329.067186-185.036429-78.428852-78.451064-139.754092-168.851291-168.2491989-248.022907-23.0685936-64.096421-19.677705-106.508943-6.0814059-120.1084613 9.2703698-9.2725646 28.4023308-10.6590823 38.9770278-10.6590823h.014553.003638zm-97.0783449-47.3654113c-85.5838654 85.5841428-7.5361096 302.3730508 174.3164169 484.2279848 131.7846 131.785028 281.899246 209.047227 387.15012 209.047227 39.988856 0 73.516631-11.161409 97.081753-34.724788 85.580227-85.580505 7.532471-302.37487-174.325512-484.226166-131.784601-131.7868471-281.895608-209.05996002-387.146482-209.049046-39.9870374.00363801-73.5166312 11.1614091-97.0762959 34.7247882z">
        		</path>
        		<path
        			d="m436.492008 386.522573c-.006183-.007941-.011923-.013676-.018547-.021176.290128-.986468.58953-1.966759.843448-2.977932 10.885343-43.327372-15.681518-94.552221-60.638205-121.523465 19.700925 26.681833 28.411849 58.999679 20.672437 87.262242-.690215 2.520875-1.519974 4.94028-2.437169 7.291743-.995358-.65338-2.24949-1.394995-3.933738-2.322787 0 0-44.719992-27.585359-93.189134-76.377127-1.271797-1.280732 25.845735 38.721944 56.621006 71.205231-14.499365-8.129535-54.907172-37.501654-80.487948-60.89232 3.142839 5.236308 6.88095 10.278499 10.990001 15.132749 21.36221 27.065655 49.22118 60.46041 82.597452 86.103716-23.450517 14.337311-56.586561 15.452161-89.578644.015-8.160254-3.820577-15.831661-8.430416-22.932967-13.668048 13.965476 22.316846 35.474295 41.571495 61.652551 52.812197 31.218634 13.403343 62.263279 12.494522 85.385249.219706l-.018106.02647c.105542-.066617.239787-.139411.349303-.206911.949431-.509999 1.891797-1.029262 2.813408-1.577642 11.109232-5.760866 33.052141-11.605554 44.829949 11.28879 2.884506 5.602924 9.013859-24.089929-13.520346-51.790436z">
        		</path>
        	</g>
        </svg>
        """)
    }
}

extension Node where Context == HTML.AnchorContext {
    static func slashmoLogo() -> Node<HTML.AnchorContext> {
        .raw("""
        <svg height="65"
        	viewBox="0 0 235 65" width="235">
        	<defs>
        		<path id="a"
        			d="m51.6342857 28.0685714c.1371436.7771468.2399997 1.3142843.3085714 1.6114286.0685718.2971443.1028572.6971403.1028572 1.2 0 1.508579-.3314253 2.9142792-.9942857 4.2171429-.6628605 1.3028636-1.5657086 2.2285686-2.7085715 2.7771428-.9142902-1.2342919-2.034279-2.2971384-3.36-3.1885714-1.3257209-.891433-2.7771349-1.6228543-4.3542857-2.1942857-1.5771507-.5714315-3.2114201-.9942844-4.9028571-1.2685715-1.691437-.274287-3.3371349-.4114285-4.9371429-.4114285s-3.0971359.125713-4.4914285.3771428c-1.3942927.2514299-2.6285661.5942836-3.7028572 1.0285715-1.0742911.4342878-1.9199969.9714253-2.5371428 1.6114285-.617146.6400032-.9257143 1.3714245-.9257143 2.1942857.1371435 1.0057194.7542802 2.022852 1.8514285 3.0514286 1.0971484 1.0285766 2.4457063 2.0342808 4.0457143 3.0171429 1.600008.982862 3.3714189 1.9542809 5.3142857 2.9142857 1.9428669.9600048 3.8514192 1.8742814 5.7257143 2.7428571 2.3314403 1.0971484 4.3428487 2.1142811 6.0342857 3.0514286 1.6914371.9371475 3.0857088 1.9657087 4.1828572 3.0857143 1.0971483 1.1200056 1.9199972 2.3885643 2.4685714 3.8057143.5485742 1.4171499.8228572 3.1314185.8228572 5.1428571 0 2.3314402-.3885676 4.5142756-1.1657143 6.5485714-.7771468 2.0342959-1.908564 3.8057068-3.3942857 5.3142858-1.4857218 1.5085789-3.2799895 2.68571-5.3828572 3.5314285-2.1028676.8457185-4.4571298 1.2685715-7.0628571 1.2685715-2.5600128 0-5.3256995-.3885676-8.2971429-1.1657143-2.9714434-.7771468-5.7485585-1.8399933-8.3314286-3.1885715-2.58287-1.3485781-4.73142-2.9028483-6.44571424-4.6628571-1.71429429-1.7600088-2.57142857-3.6228473-2.57142857-5.5885714 0-.9142903.26285451-2.0799929.78857142-3.4971429.52571692-1.4171499 1.47427886-2.9028494 2.84571429-4.4571428.1371435 1.3714354.8799933 2.9942763 2.2285714 4.8685714 1.3485782 1.8742951 3.3714151 3.6114206 6.0685715 5.2114286 2.5142982 1.4628644 5.108558 2.5257109 7.7828571 3.1885714 2.6742991.6628604 5.1771312.9942857 7.5085714.9942857 2.5600128 0 4.639992-.3199968 6.24-.96s2.8571383-1.4057098 3.7714286-2.2971429c.9142903-.891433 1.5542839-1.7942811 1.92-2.7085714s.5714283-1.6457115.6171429-2.1942857c-.0457146-.9142903-.4685675-1.7942815-1.2685715-2.64s-1.8742789-1.6685674-3.2228571-2.4685714-2.9142768-1.6114245-4.6971429-2.4342857c-1.782866-.8228613-3.6342761-1.6457102-5.5542857-2.4685715-2.8800144-1.2800064-5.3599896-2.4799944-7.44-3.6s-3.794279-2.2628513-5.1428571-3.4285714c-1.3485782-1.1657201-2.3314255-2.388565-2.9485715-3.6685714-.6171459-1.2800064-.9257142-2.7428489-.9257142-4.3885715 0-2.5600128.777135-4.9828457 2.3314285-7.2685714s3.7942711-4.0228512 6.72-5.2114286c1.4628645-.6400032 3.0285631-1.0971414 4.6971429-1.3714285s3.3028491-.4114286 4.9028571-.4114286c3.017158 0 5.9656999.4114245 8.8457143 1.2342857 2.8800144.8228613 5.7599856 1.8742793 8.64 3.1542857zm2.4685714 41.8285715c0-2.0114387.4799952-4.8342676 1.44-8.4685715s2.3085628-7.8742615 4.0457143-12.72c2.8342999-7.7257529 5.4971304-14.1599743 7.9885715-19.3028571 2.491441-5.1428829 4.9257024-9.1542713 7.3028571-12.0342857.5485742.091429 1.2228531.3199981 2.0228571.6857143.800004.3657161 1.5885676.7657121 2.3657143 1.2.7771468.4342878 1.4742827.8799977 2.0914286 1.3371428.6171459.4571452 1.0171419.8228558 1.2 1.0971429-3.5657321 4.2057353-6.6971294 8.7314043-9.3942857 13.5771428-2.6971564 4.8457385-5.1657031 10.3999687-7.4057143 16.6628572-1.9200096 5.3943127-3.3828521 10.2514069-4.3885714 14.5714285s-1.5085715 7.9199856-1.5085715 10.8v1.44c0 .1828581.022857.3657134.0685715.5485715-.6400032-.0914291-1.1885692-.2514275-1.6457143-.48-.4571452-.2285726-.754285-.5028556-.8914286-.8228572-.091429-.2285725-.3428551-.5599978-.7542857-.9942857s-.7771413-.7657131-1.0971429-.9942857c-.4114306-.2742871-.7542843-.9942799-1.0285714-2.16s-.4114286-2.4799927-.4114286-3.9428571zm39.6342858-23.3142858c.4571451 0 .9942826.0799992 1.6114285.24.617146.1600008 1.1771404.3657131 1.68.6171429.5028597.2514298.9257126.5142843 1.2685715.7885714.3428588.2742871.5142857.5257132.5142857.7542857-.9142903 1.9200096-1.7599961 3.8514189-2.5371429 5.7942858-.7771467 1.9428668-1.4399972 3.8057053-1.9885714 5.5885714-.5485742 1.782866-.9714271 3.4514208-1.2685714 5.0057143-.2971444 1.5542935-.4457143 2.9028514-.4457143 4.0457143 0 1.2800064.1371415 2.3428529.4114285 3.1885714.2742871.8457185.7314254 1.4514267 1.3714286 1.8171428-.5485742.3657162-1.2571385.662856-2.1257143.8914286-.8685757.2285726-1.6457108.3428572-2.3314285.3428572-2.4685838 0-3.7028572-1.6914117-3.7028572-5.0742858 0-2.6057273.8685628-6.1714059 2.6057143-10.6971428-.9142903 2.1028676-1.9657083 4.0799907-3.1542857 5.9314286-1.1885774 1.8514378-2.3999938 3.4857072-3.6342857 4.9028571s-2.4799937 2.5714241-3.7371429 3.4628571c-1.2571491.8914331-2.4114233 1.4285706-3.4628571 1.6114286-1.6914371-.091429-3.0628519-.9028495-4.1142857-2.4342857-1.0514339-1.5314362-1.5771429-3.4857024-1.5771429-5.8628571 0-2.5600128.5485659-5.2571287 1.6457143-8.0914286 1.0971483-2.8342999 2.5028486-5.462845 4.2171428-7.8857143 1.7142943-2.4228693 3.5771328-4.4457062 5.5885715-6.0685714 2.0114386-1.6228653 3.9542763-2.4799996 5.8285714-2.5714286.4571451.1371435.9714257.4114265 1.5428571.8228571.5714315.4114307 1.1199974.8914259 1.6457143 1.44.5257169.5485742.9714268 1.1085686 1.3371429 1.68.3657161.5714315.5714283 1.0628551.6171428 1.4742858-1.8285805.274287-3.714276 1.1657067-5.6571428 2.6742857-1.9428669 1.5085789-3.7028493 3.3257036-5.28 5.4514285-1.5771508 2.125725-2.8685664 4.3999879-3.8742857 6.8228572-1.0057193 2.4228692-1.5085715 4.6857038-1.5085715 6.7885714 0 .8685758.3199968 1.4171417.96 1.6457143 1.325721-.2742871 2.8571342-1.4057043 4.5942858-3.3942857 1.7371515-1.9885814 3.8399876-5.0628364 6.3085714-9.2228572.4571451-.8228612.9714257-1.7371378 1.5428571-2.7428571.5714315-1.0057193 1.1542828-2.0571374 1.7485715-3.1542857.5942886-1.0971484 1.17714-2.2057087 1.7485714-3.3257143s1.1085689-2.205709 1.6114286-3.2571429zm32.2285711.4114286c-.045714.8685758-.194284 1.7714239-.445714 2.7085714-.25143.9371476-.559998 1.7828534-.925714 2.5371429s-.754284 1.3828546-1.165715 1.8857143c-.41143.5028596-.799998.7542857-1.165714.7542857-.50286-.0457145-.799999-.3885682-.891428-1.0285714 0-.1371436.057142-.3542843.171428-.6514286s.239999-.6285696.377143-.9942857.262857-.7314268.377143-1.0971429.171428-.6857129.171428-.96c0-.6400032-.14857-1.1771407-.445714-1.6114285-.297144-.4342879-.69714-.6514286-1.2-.6514286-1.82858 0-3.222852 1.1428457-4.182857 3.4285714s-1.44 5.6456921-1.44 10.08c0 .4571452.022857.7314281.068571.8228572.960005-.0457146 1.81714-.0799999 2.571429-.1028572.754289-.0228572 1.497139-.0342857 2.228571-.0342857.045715.091429.068572.2742843.068572.5485714 0 .4114307-.091428.7085705-.274286.8914286-1.051434.2285726-1.885711.4228563-2.502857.5828571s-1.085713.3085708-1.405714.4457143c-.320002.1371436-.514286.2857135-.582857.4457143-.068572.1600008-.102858.3771415-.102858.6514286 0 .3657161.011429.7314267.034286 1.0971428.022857.3657162.034286.8228544.034286 1.3714286 0 3.8400192-1.03999 6.9257026-3.12 9.2571429-2.080011 2.3314402-4.97141 3.6799981-8.674286 4.0457143-.640003-.0457146-1.302854-.2285699-1.988571-.5485715-.685718-.3200016-1.33714-.731426-1.954286-1.2342857-.6171459-.5028596-1.1542834-1.062854-1.6114286-1.68-.4571451-.6171459-.7771419-1.2457111-.96-1.8857143 0-1.7371515.3657107-3.3942778 1.0971429-4.9714285.7314322-1.5771508 1.725708-2.9714226 2.9828567-4.1828572 1.25715-1.2114346 2.742849-2.1942819 4.457143-2.9485714 1.714295-.7542895 3.577133-1.1999993 5.588572-1.3371429 0-1.1428628-.114285-2.2628516-.342857-3.36-.228573-1.0971483-.468571-2.1599948-.72-3.1885714-.25143-1.0285766-.491428-2.0342808-.72-3.0171429-.228573-.982862-.342858-1.9542809-.342858-2.9142857 0-1.2342919.251426-2.4571368.754286-3.6685714s1.16571-2.3314234 1.988572-3.36c.822861-1.0285766 1.782851-1.9085678 2.88-2.64 1.097148-.7314322 2.239994-1.2342843 3.428571-1.5085714.50286.1371435 1.177139.5371395 2.022857 1.2.845719.6628604 1.679996 1.4057101 2.502857 2.2285714.822862.8228613 1.554283 1.6571386 2.194286 2.5028571.640003.8457186 1.028571 1.5428544 1.165714 2.0914286zm-22.628571 31.2685714c1.097148-.4571451 2.137138-1.1199956 3.12-1.9885714s1.839996-1.8514231 2.571428-2.9485714c.731433-1.0971484 1.314284-2.262851 1.748572-3.4971429s.651428-2.4457083.651428-3.6342857c-.91429.1371436-1.919994.5599965-3.017142 1.2685714-1.097149.708575-2.12571 1.5542808-3.085715 2.5371429s-1.759997 1.9999947-2.4 3.0514286c-.640003 1.0514338-.96 1.9657104-.96 2.7428571 0 1.0057193.457139 1.8285682 1.371429 2.4685714zm22.628571-5.1428571c0-1.600008.159999-3.4857034.48-5.6571429.320002-2.1714394.788569-4.4914162 1.405715-6.96.617146-2.4685837 1.348567-5.051415 2.194285-7.7485714.845719-2.6971563 1.794281-5.3942722 2.845715-8.0914286.91429-2.4228692 1.977136-4.868559 3.188571-7.3371428s2.525707-4.8914167 3.942857-7.2685714c1.41715-2.3771548 2.891421-4.6399893 4.422857-6.7885715 1.531437-2.1485821 3.074278-4.1142768 4.628572-5.8971428.731432 0 1.519995.0914276 2.365714.2742857.845719.182858 1.668567.4228556 2.468571.72.800004.2971443 1.531426.6514265 2.194286 1.0628571.662861.4114307 1.199998.8228551 1.611429 1.2342857-3.428589 3.5200176-6.514272 7.0742678-9.257143 10.6628572s-4.914278 6.9599842-6.514286 10.1142857c-.868576 1.7371515-1.657139 3.3599925-2.365714 4.8685714-.708575 1.508579-1.359997 3.0057069-1.954286 4.4914286s-1.131426 2.9714211-1.611428 4.4571429c-.480003 1.4857217-.925713 3.0514203-1.337143 4.6971428 8.777186-11.200056 15.291407-16.8 19.542857-16.8 1.188577 0 2.468564.3885676 3.84 1.1657143 1.371435.7771467 2.582852 1.8285648 3.634286 3.1542857-1.41715 1.5542935-2.879993 3.4285605-4.388572 5.6228572-1.508579 2.1942966-2.891422 4.3999889-4.148571 6.6171428-1.257149 2.217154-2.285711 4.2742762-3.085715 6.1714286-.800004 1.8971523-1.2 3.3028526-1.2 4.2171428 0 .4571452.068571.7657135.205715.9257143.137143.1600008.434283.24.891428.24.685718 0 1.234284-.0914276 1.645715-.2742857.41143-.182858.662856-.2742857.754285-.2742857.228573.3657161.365714.6171422.411429.7542857.045714.1371436.068571.2514281.068571.3428572 0 .182858-.274283.4457125-.822857.7885714-.548574.3428588-1.199996.6857126-1.954286 1.0285714-.754289.3428589-1.497139.6514272-2.228571.9257143s-1.279998.4114286-1.645714.4114286c-.457145 0-.914284-.1257131-1.371429-.3771429s-.857141-.5828551-1.2-.9942857-.617142-.8685689-.822857-1.3714286c-.205715-.5028596-.308571-1.0285687-.308571-1.5771428 0-.6857177.194283-1.7028504.582857-3.0514286.388573-1.3485782.925711-2.9257053 1.611428-4.7314286.685718-1.8057233 1.508567-3.7828464 2.468572-5.9314285.960005-2.1485822 1.988566-4.342846 3.085714-6.5828572 0-.182858-.091428-.2742857-.274286-.2742857-.137143 0-.491425.1828553-1.062857.5485714-.571431.3657161-1.108569.7314268-1.611428 1.0971429-1.645723 1.2342919-3.302849 2.7542767-4.971429 4.56s-3.291421 3.7828464-4.868571 5.9314286c-1.577151 2.1485821-3.062851 4.4228451-4.457143 6.8228571-1.394293 2.400012-2.594281 4.8114165-3.6 7.2342857-.137144.3200016-.342856.6171415-.617143.8914286s-.502856.4114286-.685714.4114286c-.137144 0-.331428-.1599984-.582858-.48-.251429-.3200016-.479999-.7199976-.685714-1.2s-.399999-.9714261-.582857-1.4742858c-.182858-.5028596-.274286-.937141-.274286-1.3028571zm75.154286-19.8857143c-.731432.0457145-1.622852.5142813-2.674286 1.4057143s-2.182851 2.0342787-3.394285 3.4285714c-1.211435 1.3942927-2.468565 2.9371344-3.771429 4.6285715-1.302864 1.691437-2.559994 3.3714202-3.771429 5.04-1.211434 1.6685797-2.342851 3.2342784-3.394285 4.6971428-1.051434 1.4628645-1.942854 2.6285671-2.674286 3.4971429-1.005719-.4114307-1.874282-1.0171389-2.605714-1.8171429-.731433-.800004-1.257142-1.7942798-1.577143-2.9828571.228572-1.41715.548569-2.8914209.96-4.4228572.41143-1.5314362.948568-3.1199917 1.611428-4.7657143.662861-1.6457225 1.48571-3.3714195 2.468572-5.1771428s2.18285-3.7142757 3.6-5.7257143c-.685718.0457145-1.622851.5371382-2.811429 1.4742857-1.188577.9371476-2.468564 2.148564-3.84 3.6342857-1.371435 1.4857217-2.788564 3.1542765-4.251428 5.0057143-1.462865 1.8514378-2.83428 3.6685625-4.114286 5.4514286-1.691437 2.3771547-3.097137 4.4571339-4.217143 6.24-1.120005 1.782866-1.931426 2.8342841-2.434286 3.1542857-1.188577-.8685758-2.011426-1.8057093-2.468571-2.8114286s-.799999-2.1257081-1.028571-3.36c.045714-1.0971483.217141-2.4685632.514285-4.1142857.297145-1.6457225.719998-3.3371342 1.268572-5.0742857 1.051434-3.3371595 2.41142-6.6514121 4.08-9.9428571 1.668579-3.2914451 3.279992-6.3085578 4.834285-9.0514286 1.280007.2742871 2.434281.7085684 3.462858 1.3028571 1.028576.5942887 2.11428 1.4628515 3.257142 2.6057143-.457145 1.41715-1.165709 2.9142778-2.125714 4.4914286-.960005 1.5771507-1.965709 3.234277-3.017143 4.9714286-1.051434 1.7371515-2.011424 3.5199908-2.88 5.3485714-.868575 1.8285806-1.439998 3.6799906-1.714285 5.5542857 1.280006-1.8285806 2.799991-3.9314167 4.56-6.3085714 1.760008-2.3771548 3.565705-4.6171324 5.417142-6.72 1.851438-2.1028677 3.69142-3.885707 5.52-5.3485715 1.828581-1.4628644 3.474279-2.1942857 4.937143-2.1942857.548574 0 1.142854.0914277 1.782857.2742857.640004.1828581 1.234283.4114272 1.782858.6857143.548574.2742871 1.005712.5371416 1.371428.7885715.365716.2514298.571428.4457136.617143.5828571-.228573.9142903-.76571 2.1599921-1.611429 3.7371429-.845718 1.5771507-1.748566 3.234277-2.708571 4.9714285-.960005 1.7371516-1.851424 3.4171348-2.674286 5.04-.822861 1.6228653-1.302856 2.9142809-1.44 3.8742857 2.240011-3.0628724 4.342848-5.8399875 6.308572-8.3314285 1.965724-2.4914411 3.817134-4.6285625 5.554285-6.4114286 1.737152-1.7828661 3.348564-3.1542809 4.834286-4.1142857s2.891422-1.44 4.217143-1.44c.91429 0 1.771425.2399976 2.571429.72s1.359998 1.1771383 1.68 2.0914286c-.411431 1.3714354-1.08571 3.0171332-2.022858 4.9371428-.937147 1.9200096-1.885709 3.9428465-2.845714 6.0685714-.960005 2.125725-1.817139 4.2171326-2.571428 6.2742858-.75429 2.0571531-1.131429 3.9085632-1.131429 5.5542857 0 .9600048.137141 1.5885699.411429 1.8857143.274287.2971443.662854.4457142 1.165714.4457142.548574 0 1.062855-.1028561 1.542857-.3085714s.834285-.3085714 1.062857-.3085714c.274287.182858.434286.4114272.48.6857143.045715.2742871.068572.5257131.068572.7542857-.914291.7314322-1.851424 1.3371404-2.811429 1.8171428s-2.03428.72-3.222857.72c-1.097148 0-1.999997-.1828553-2.708572-.5485714s-1.291426-.8685682-1.748571-1.5085714-.777142-1.3714245-.96-2.1942857c-.182858-.8228613-.274286-1.7142809-.274286-2.6742857 0-1.5542935.205713-3.0971352.617143-4.6285715.411431-1.5314362.902854-2.9942787 1.474286-4.3885714.571431-1.3942927 1.17714-2.6971368 1.817143-3.9085714.640003-1.2114347 1.188569-2.2971381 1.645714-3.2571429zm20.914286 23.4514286c-2.605728-.2742871-4.685707-1.4171328-6.24-3.4285714-1.554294-2.0114387-2.331429-4.5714131-2.331429-7.68 0-1.8285806.274283-3.7257045.822857-5.6914286s1.32571-3.8742765 2.331429-5.7257143 2.194279-3.5999918 3.565714-5.2457143c1.371436-1.6457225 2.857135-3.0628512 4.457143-4.2514286 2.514298-1.874295 4.86856-2.8114285 7.062857-2.8114285 1.462865.7771467 2.90285 2.3999876 4.32 4.8685714.228573 0 .434285-.0114285.617143-.0342857.182858-.0228573.38857-.0342857.617143-.0342857 2.422869 0 3.634286 2.1485499 3.634286 6.4457143 0 2.8800144-.468567 5.6114156-1.405715 8.1942857-.937147 2.58287-2.239991 4.9257037-3.908571 7.0285714s-3.657131 3.8742785-5.965714 5.3142857-4.834272 2.4571399-7.577143 3.0514286zm3.497143-21.6c-.777147 1.0514338-1.508568 2.1942795-2.194286 3.4285714s-1.279998 2.4799937-1.782857 3.7371429c-.50286 1.2571491-.891427 2.4685656-1.165715 3.6342857-.274287 1.1657201-.411428 2.2057097-.411428 3.12 0 1.0971483.182855 2.1485664.548571 3.1542857s.777141 1.5771422 1.234286 1.7142857c2.057153-.4571451 3.942849-1.3142794 5.657143-2.5714286 1.714294-1.2571491 3.199994-2.8228477 4.457143-4.6971428s2.239996-3.9999881 2.948571-6.3771429c.708575-2.3771547 1.062857-4.9142722 1.062857-7.6114285 0-1.1885774-.06857-2.1257109-.205714-2.8114286s-.365713-1.2799975-.685714-1.7828572c-2.011439.5942887-3.805707 1.5542791-5.382857 2.88-1.577151 1.325721-2.937138 2.7199927-4.08 4.1828572z">
        		</path>
        	</defs>
        	<g fill-rule="evenodd" transform="translate(-6 -17)">
        		<use xlink:href="#a"></use>
        		<use xlink:href="#a"></use>
        	</g>
        </svg>
        """)
    }
}

extension Node where Context == HTML.AnchorContext {
    static func twitter() -> Node<HTML.AnchorContext> {
        .raw("""
        <svg height="204"
        	viewBox="0 0 250 204" width="250">
        	<path
        		d="m78.6 203.6c94.3 0 145.9-78.2 145.9-145.9 0-2.2 0-4.4-.1-6.6 10-7.2 18.7-16.3 25.6-26.6-9.2 4.1-19.1 6.8-29.5 8.1 10.6-6.3 18.7-16.4 22.6-28.4-9.9 5.9-20.9 10.1-32.6 12.4-9.4-10-22.7-16.2-37.4-16.2-28.3 0-51.3 23-51.3 51.3 0 4 .5 7.9 1.3 11.7-42.6-2.1-80.4-22.6-105.7-53.6-4.4 7.6-6.9 16.4-6.9 25.8 0 17.8 9.1 33.5 22.8 42.7-8.4-.3-16.3-2.6-23.2-6.4v.7c0 24.8 17.7 45.6 41.1 50.3-4.3 1.2-8.8 1.8-13.5 1.8-3.3 0-6.5-.3-9.6-.9 6.5 20.4 25.5 35.2 47.9 35.6-17.6 13.8-39.7 22-63.7 22-4.1 0-8.2-.2-12.2-.7 22.6 14.4 49.6 22.9 78.5 22.9">
        	</path>
        </svg>
        """)
    }

    static func github() -> Node<HTML.AnchorContext> {
        .raw("""
        <svg height="119"
        	viewBox="0 0 121 119" width="121">
        	<path
        		d="m350.609 6.445c-33.347 0-60.388 27.036-60.388 60.388 0 26.681 17.303 49.317 41.297 57.302 3.018.559 4.126-1.31 4.126-2.905 0-1.44-.056-6.197-.082-11.243-16.8 3.653-20.345-7.125-20.345-7.125-2.747-6.98-6.705-8.836-6.705-8.836-5.479-3.748.413-3.671.413-3.671 6.064.426 9.257 6.223 9.257 6.223 5.386 9.232 14.127 6.563 17.573 5.02.542-3.903 2.107-6.567 3.834-8.075-13.413-1.527-27.513-6.705-27.513-29.844 0-6.593 2.359-11.98 6.222-16.209-.627-1.521-2.694-7.663.585-15.981 0 0 5.071-1.623 16.611 6.19 4.817-1.338 9.983-2.009 15.115-2.032 5.132.023 10.302.694 15.128 2.032 11.526-7.813 16.59-6.19 16.59-6.19 3.287 8.318 1.219 14.46.592 15.981 3.872 4.229 6.215 9.616 6.215 16.209 0 23.194-14.127 28.301-27.574 29.796 2.166 1.874 4.096 5.549 4.096 11.183 0 8.08-.07 14.583-.07 16.572 0 1.607 1.087 3.49 4.148 2.897 23.981-7.994 41.262-30.622 41.262-57.294 0-33.352-27.037-60.388-60.387-60.388"
        		fill-rule="evenodd" transform="translate(-290 -6)"></path>
        </svg>
        """)
    }
}

extension Node where Context == HTML.BodyContext {
    static func pageFooter() -> Self {
        .footer(
            .class("readable-content page-footer"),
            .a(
                .href("/"),
                .logo()
            ),
            .a(
                .class("creator"),
                .href("https://twitter.com/slashmodev"),
                .target(.blank),
                .slashmoLogo()
            ),
            .div(
                .class("social"),
                .a(
                    .href("https://twitter.com/uniswiftblog"),
                    .target(.blank),
                    .twitter()
                ),
                .a(
                    .href("https://github.com/universalswift"),
                    .target(.blank),
                    .github()
                )
            )
        )
    }
}
