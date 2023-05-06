module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 5 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_4(dense<[[[[5], [4]]]]> : tensor<1x1x2x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>>
    %5 = llvm.bitcast %4 : !llvm.ptr<array<1 x array<1 x array<2 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %5, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.insertvalue %9, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.mlir.constant(1 : index) : i64
    %12 = llvm.insertvalue %11, %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.insertvalue %13, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(2 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.mlir.constant(2 : index) : i64
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.mlir.null : !llvm.ptr<i32>
    %35 = llvm.getelementptr %34[%33] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i32> to i64
    %37 = llvm.mlir.constant(16 : index) : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.call @malloc(%38) : (i64) -> !llvm.ptr<i8>
    %40 = llvm.bitcast %39 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
    %42 = llvm.mlir.constant(1 : index) : i64
    %43 = llvm.sub %37, %42  : i64
    %44 = llvm.add %41, %43  : i64
    %45 = llvm.urem %44, %37  : i64
    %46 = llvm.sub %44, %45  : i64
    %47 = llvm.inttoptr %46 : i64 to !llvm.ptr<i32>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.insertvalue %40, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.insertvalue %47, %49[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(0 : index) : i64
    %52 = llvm.insertvalue %51, %50[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.insertvalue %27, %52[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %28, %53[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %29, %54[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %30, %55[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %32, %56[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %29, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %30, %58[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %31, %59[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%61 : i64)
  ^bb1(%64: i64):  // 2 preds: ^bb0, ^bb11
    %65 = llvm.icmp "slt" %64, %62 : i64
    llvm.cond_br %65, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%66 : i64)
  ^bb3(%69: i64):  // 2 preds: ^bb2, ^bb10
    %70 = llvm.icmp "slt" %69, %67 : i64
    llvm.cond_br %70, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%71 : i64)
  ^bb5(%74: i64):  // 2 preds: ^bb4, ^bb9
    %75 = llvm.icmp "slt" %74, %72 : i64
    llvm.cond_br %75, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%76 : i64)
  ^bb7(%79: i64):  // 2 preds: ^bb6, ^bb8
    %80 = llvm.icmp "slt" %79, %77 : i64
    llvm.cond_br %80, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %81 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %82 = llvm.load %81 : !llvm.ptr<i32>
    %83 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mul %64, %84  : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mul %69, %86  : i64
    %88 = llvm.add %85, %87  : i64
    %89 = llvm.add %88, %74  : i64
    %90 = llvm.add %89, %79  : i64
    %91 = llvm.getelementptr %83[%90] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %92 = llvm.load %91 : !llvm.ptr<i32>
    %93 = llvm.icmp "sgt" %82, %92 : i32
    %94 = llvm.select %93, %82, %92 : i1, i32
    %95 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.mul %64, %96  : i64
    %98 = llvm.mlir.constant(2 : index) : i64
    %99 = llvm.mul %69, %98  : i64
    %100 = llvm.add %97, %99  : i64
    %101 = llvm.add %100, %74  : i64
    %102 = llvm.add %101, %79  : i64
    %103 = llvm.getelementptr %95[%102] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %94, %103 : !llvm.ptr<i32>
    %104 = llvm.add %79, %78  : i64
    llvm.br ^bb7(%104 : i64)
  ^bb9:  // pred: ^bb7
    %105 = llvm.add %74, %73  : i64
    llvm.br ^bb5(%105 : i64)
  ^bb10:  // pred: ^bb5
    %106 = llvm.add %69, %68  : i64
    llvm.br ^bb3(%106 : i64)
  ^bb11:  // pred: ^bb3
    %107 = llvm.add %64, %63  : i64
    llvm.br ^bb1(%107 : i64)
  ^bb12:  // pred: ^bb1
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    %110 = llvm.mlir.constant(2 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.null : !llvm.ptr<i32>
    %116 = llvm.getelementptr %115[%114] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i32> to i64
    %118 = llvm.mlir.constant(16 : index) : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.call @malloc(%119) : (i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %122 = llvm.ptrtoint %121 : !llvm.ptr<i32> to i64
    %123 = llvm.mlir.constant(1 : index) : i64
    %124 = llvm.sub %118, %123  : i64
    %125 = llvm.add %122, %124  : i64
    %126 = llvm.urem %125, %118  : i64
    %127 = llvm.sub %125, %126  : i64
    %128 = llvm.inttoptr %127 : i64 to !llvm.ptr<i32>
    %129 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %130 = llvm.insertvalue %121, %129[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %128, %130[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.mlir.constant(0 : index) : i64
    %133 = llvm.insertvalue %132, %131[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %108, %133[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %109, %134[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %110, %135[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %111, %136[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %113, %137[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.insertvalue %110, %138[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %111, %139[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %112, %140[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.mlir.constant(0 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    %144 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%142 : i64)
  ^bb13(%145: i64):  // 2 preds: ^bb12, ^bb23
    %146 = llvm.icmp "slt" %145, %143 : i64
    llvm.cond_br %146, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %147 = llvm.mlir.constant(0 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%147 : i64)
  ^bb15(%150: i64):  // 2 preds: ^bb14, ^bb22
    %151 = llvm.icmp "slt" %150, %148 : i64
    llvm.cond_br %151, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %152 = llvm.mlir.constant(0 : index) : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%152 : i64)
  ^bb17(%155: i64):  // 2 preds: ^bb16, ^bb21
    %156 = llvm.icmp "slt" %155, %153 : i64
    llvm.cond_br %156, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %157 = llvm.mlir.constant(0 : index) : i64
    %158 = llvm.mlir.constant(1 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%157 : i64)
  ^bb19(%160: i64):  // 2 preds: ^bb18, ^bb20
    %161 = llvm.icmp "slt" %160, %158 : i64
    llvm.cond_br %161, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %162 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(2 : index) : i64
    %164 = llvm.mul %145, %163  : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mul %150, %165  : i64
    %167 = llvm.add %164, %166  : i64
    %168 = llvm.add %167, %155  : i64
    %169 = llvm.add %168, %160  : i64
    %170 = llvm.getelementptr %162[%169] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %171 = llvm.load %170 : !llvm.ptr<i32>
    %172 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %173 = llvm.mlir.constant(2 : index) : i64
    %174 = llvm.mul %145, %173  : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mul %150, %175  : i64
    %177 = llvm.add %174, %176  : i64
    %178 = llvm.add %177, %155  : i64
    %179 = llvm.add %178, %160  : i64
    %180 = llvm.getelementptr %172[%179] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %171, %180 : !llvm.ptr<i32>
    %181 = llvm.add %160, %159  : i64
    llvm.br ^bb19(%181 : i64)
  ^bb21:  // pred: ^bb19
    %182 = llvm.add %155, %154  : i64
    llvm.br ^bb17(%182 : i64)
  ^bb22:  // pred: ^bb17
    %183 = llvm.add %150, %149  : i64
    llvm.br ^bb15(%183 : i64)
  ^bb23:  // pred: ^bb15
    %184 = llvm.add %145, %144  : i64
    llvm.br ^bb13(%184 : i64)
  ^bb24:  // pred: ^bb13
    %185 = llvm.mlir.constant(1 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(1 : index) : i64
    %190 = llvm.mlir.constant(2 : index) : i64
    %191 = llvm.mlir.constant(2 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i32>
    %193 = llvm.getelementptr %192[%191] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i32> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i32> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i32>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %211 = llvm.insertvalue %185, %210[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %212 = llvm.insertvalue %186, %211[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %213 = llvm.insertvalue %187, %212[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %214 = llvm.insertvalue %188, %213[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %215 = llvm.insertvalue %190, %214[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %187, %215[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.insertvalue %188, %216[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %218 = llvm.insertvalue %189, %217[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%219 : i64)
  ^bb25(%222: i64):  // 2 preds: ^bb24, ^bb35
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(1 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%224 : i64)
  ^bb27(%227: i64):  // 2 preds: ^bb26, ^bb34
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%229 : i64)
  ^bb29(%232: i64):  // 2 preds: ^bb28, ^bb33
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %234 = llvm.mlir.constant(0 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%234 : i64)
  ^bb31(%237: i64):  // 2 preds: ^bb30, ^bb32
    %238 = llvm.icmp "slt" %237, %235 : i64
    llvm.cond_br %238, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %239 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(2 : index) : i64
    %241 = llvm.mul %222, %240  : i64
    %242 = llvm.mlir.constant(2 : index) : i64
    %243 = llvm.mul %227, %242  : i64
    %244 = llvm.add %241, %243  : i64
    %245 = llvm.add %244, %232  : i64
    %246 = llvm.add %245, %237  : i64
    %247 = llvm.getelementptr %239[%246] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %248 = llvm.load %247 : !llvm.ptr<i32>
    %249 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mul %222, %250  : i64
    %252 = llvm.mlir.constant(2 : index) : i64
    %253 = llvm.mul %227, %252  : i64
    %254 = llvm.add %251, %253  : i64
    %255 = llvm.add %254, %232  : i64
    %256 = llvm.add %255, %237  : i64
    %257 = llvm.getelementptr %249[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %258 = llvm.load %257 : !llvm.ptr<i32>
    %259 = llvm.sub %248, %258  : i32
    %260 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mul %222, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %227, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.add %265, %232  : i64
    %267 = llvm.add %266, %237  : i64
    %268 = llvm.getelementptr %260[%267] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %259, %268 : !llvm.ptr<i32>
    %269 = llvm.add %237, %236  : i64
    llvm.br ^bb31(%269 : i64)
  ^bb33:  // pred: ^bb31
    %270 = llvm.add %232, %231  : i64
    llvm.br ^bb29(%270 : i64)
  ^bb34:  // pred: ^bb29
    %271 = llvm.add %227, %226  : i64
    llvm.br ^bb27(%271 : i64)
  ^bb35:  // pred: ^bb27
    %272 = llvm.add %222, %221  : i64
    llvm.br ^bb25(%272 : i64)
  ^bb36:  // pred: ^bb25
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(5 : index) : i64
    %275 = llvm.mlir.constant(2 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.mlir.constant(10 : index) : i64
    %279 = llvm.mlir.constant(10 : index) : i64
    %280 = llvm.mlir.null : !llvm.ptr<i32>
    %281 = llvm.getelementptr %280[%279] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %282 = llvm.ptrtoint %281 : !llvm.ptr<i32> to i64
    %283 = llvm.mlir.constant(16 : index) : i64
    %284 = llvm.add %282, %283  : i64
    %285 = llvm.call @malloc(%284) : (i64) -> !llvm.ptr<i8>
    %286 = llvm.bitcast %285 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %287 = llvm.ptrtoint %286 : !llvm.ptr<i32> to i64
    %288 = llvm.mlir.constant(1 : index) : i64
    %289 = llvm.sub %283, %288  : i64
    %290 = llvm.add %287, %289  : i64
    %291 = llvm.urem %290, %283  : i64
    %292 = llvm.sub %290, %291  : i64
    %293 = llvm.inttoptr %292 : i64 to !llvm.ptr<i32>
    %294 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %295 = llvm.insertvalue %286, %294[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %293, %295[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.mlir.constant(0 : index) : i64
    %298 = llvm.insertvalue %297, %296[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %273, %298[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %274, %299[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %275, %300[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %276, %301[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %278, %302[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.insertvalue %275, %303[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %305 = llvm.insertvalue %276, %304[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.insertvalue %277, %305[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.mlir.constant(1 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%307 : i64)
  ^bb37(%310: i64):  // 2 preds: ^bb36, ^bb47
    %311 = llvm.icmp "slt" %310, %308 : i64
    llvm.cond_br %311, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %312 = llvm.mlir.constant(0 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%312 : i64)
  ^bb39(%315: i64):  // 2 preds: ^bb38, ^bb46
    %316 = llvm.icmp "slt" %315, %313 : i64
    llvm.cond_br %316, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %317 = llvm.mlir.constant(0 : index) : i64
    %318 = llvm.mlir.constant(2 : index) : i64
    %319 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%317 : i64)
  ^bb41(%320: i64):  // 2 preds: ^bb40, ^bb45
    %321 = llvm.icmp "slt" %320, %318 : i64
    llvm.cond_br %321, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.mlir.constant(1 : index) : i64
    %324 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%322 : i64)
  ^bb43(%325: i64):  // 2 preds: ^bb42, ^bb44
    %326 = llvm.icmp "slt" %325, %323 : i64
    llvm.cond_br %326, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %327 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.mlir.constant(2 : index) : i64
    %329 = llvm.mul %310, %328  : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mul %315, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.add %332, %320  : i64
    %334 = llvm.add %333, %325  : i64
    %335 = llvm.getelementptr %327[%334] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %336 = llvm.load %335 : !llvm.ptr<i32>
    %337 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(10 : index) : i64
    %339 = llvm.mul %310, %338  : i64
    %340 = llvm.mlir.constant(2 : index) : i64
    %341 = llvm.mul %315, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.add %342, %320  : i64
    %344 = llvm.add %343, %325  : i64
    %345 = llvm.getelementptr %337[%344] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %336, %345 : !llvm.ptr<i32>
    %346 = llvm.add %325, %324  : i64
    llvm.br ^bb43(%346 : i64)
  ^bb45:  // pred: ^bb43
    %347 = llvm.add %320, %319  : i64
    llvm.br ^bb41(%347 : i64)
  ^bb46:  // pred: ^bb41
    %348 = llvm.add %315, %314  : i64
    llvm.br ^bb39(%348 : i64)
  ^bb47:  // pred: ^bb39
    %349 = llvm.add %310, %309  : i64
    llvm.br ^bb37(%349 : i64)
  ^bb48:  // pred: ^bb37
    %350 = llvm.mlir.constant(0 : index) : i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%350 : i64)
  ^bb49(%353: i64):  // 2 preds: ^bb48, ^bb59
    %354 = llvm.icmp "slt" %353, %351 : i64
    llvm.cond_br %354, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %355 = llvm.mlir.constant(0 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%355 : i64)
  ^bb51(%358: i64):  // 2 preds: ^bb50, ^bb58
    %359 = llvm.icmp "slt" %358, %356 : i64
    llvm.cond_br %359, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%360 : i64)
  ^bb53(%363: i64):  // 2 preds: ^bb52, ^bb57
    %364 = llvm.icmp "slt" %363, %361 : i64
    llvm.cond_br %364, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %365 = llvm.mlir.constant(0 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%365 : i64)
  ^bb55(%368: i64):  // 2 preds: ^bb54, ^bb56
    %369 = llvm.icmp "slt" %368, %366 : i64
    llvm.cond_br %369, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.add %358, %370  : i64
    %372 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mul %353, %373  : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mul %358, %375  : i64
    %377 = llvm.add %374, %376  : i64
    %378 = llvm.add %377, %363  : i64
    %379 = llvm.add %378, %368  : i64
    %380 = llvm.getelementptr %372[%379] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %381 = llvm.load %380 : !llvm.ptr<i32>
    %382 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(10 : index) : i64
    %384 = llvm.mul %353, %383  : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mul %371, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.add %387, %363  : i64
    %389 = llvm.add %388, %368  : i64
    %390 = llvm.getelementptr %382[%389] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %381, %390 : !llvm.ptr<i32>
    %391 = llvm.add %368, %367  : i64
    llvm.br ^bb55(%391 : i64)
  ^bb57:  // pred: ^bb55
    %392 = llvm.add %363, %362  : i64
    llvm.br ^bb53(%392 : i64)
  ^bb58:  // pred: ^bb53
    %393 = llvm.add %358, %357  : i64
    llvm.br ^bb51(%393 : i64)
  ^bb59:  // pred: ^bb51
    %394 = llvm.add %353, %352  : i64
    llvm.br ^bb49(%394 : i64)
  ^bb60:  // pred: ^bb49
    %395 = llvm.mlir.constant(0 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    %397 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%395 : i64)
  ^bb61(%398: i64):  // 2 preds: ^bb60, ^bb71
    %399 = llvm.icmp "slt" %398, %396 : i64
    llvm.cond_br %399, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%400 : i64)
  ^bb63(%403: i64):  // 2 preds: ^bb62, ^bb70
    %404 = llvm.icmp "slt" %403, %401 : i64
    llvm.cond_br %404, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %405 = llvm.mlir.constant(0 : index) : i64
    %406 = llvm.mlir.constant(2 : index) : i64
    %407 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%405 : i64)
  ^bb65(%408: i64):  // 2 preds: ^bb64, ^bb69
    %409 = llvm.icmp "slt" %408, %406 : i64
    llvm.cond_br %409, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %410 = llvm.mlir.constant(0 : index) : i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%410 : i64)
  ^bb67(%413: i64):  // 2 preds: ^bb66, ^bb68
    %414 = llvm.icmp "slt" %413, %411 : i64
    llvm.cond_br %414, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %415 = llvm.mlir.constant(2 : index) : i64
    %416 = llvm.add %403, %415  : i64
    %417 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mul %398, %418  : i64
    %420 = llvm.mlir.constant(2 : index) : i64
    %421 = llvm.mul %403, %420  : i64
    %422 = llvm.add %419, %421  : i64
    %423 = llvm.add %422, %408  : i64
    %424 = llvm.add %423, %413  : i64
    %425 = llvm.getelementptr %417[%424] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %426 = llvm.load %425 : !llvm.ptr<i32>
    %427 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.mlir.constant(10 : index) : i64
    %429 = llvm.mul %398, %428  : i64
    %430 = llvm.mlir.constant(2 : index) : i64
    %431 = llvm.mul %416, %430  : i64
    %432 = llvm.add %429, %431  : i64
    %433 = llvm.add %432, %408  : i64
    %434 = llvm.add %433, %413  : i64
    %435 = llvm.getelementptr %427[%434] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %426, %435 : !llvm.ptr<i32>
    %436 = llvm.add %413, %412  : i64
    llvm.br ^bb67(%436 : i64)
  ^bb69:  // pred: ^bb67
    %437 = llvm.add %408, %407  : i64
    llvm.br ^bb65(%437 : i64)
  ^bb70:  // pred: ^bb65
    %438 = llvm.add %403, %402  : i64
    llvm.br ^bb63(%438 : i64)
  ^bb71:  // pred: ^bb63
    %439 = llvm.add %398, %397  : i64
    llvm.br ^bb61(%439 : i64)
  ^bb72:  // pred: ^bb61
    %440 = llvm.mlir.constant(0 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    %442 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%440 : i64)
  ^bb73(%443: i64):  // 2 preds: ^bb72, ^bb83
    %444 = llvm.icmp "slt" %443, %441 : i64
    llvm.cond_br %444, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %445 = llvm.mlir.constant(0 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%445 : i64)
  ^bb75(%448: i64):  // 2 preds: ^bb74, ^bb82
    %449 = llvm.icmp "slt" %448, %446 : i64
    llvm.cond_br %449, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%450 : i64)
  ^bb77(%453: i64):  // 2 preds: ^bb76, ^bb81
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%455 : i64)
  ^bb79(%458: i64):  // 2 preds: ^bb78, ^bb80
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %460 = llvm.mlir.constant(3 : index) : i64
    %461 = llvm.add %448, %460  : i64
    %462 = llvm.extractvalue %218[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mul %443, %463  : i64
    %465 = llvm.mlir.constant(2 : index) : i64
    %466 = llvm.mul %448, %465  : i64
    %467 = llvm.add %464, %466  : i64
    %468 = llvm.add %467, %453  : i64
    %469 = llvm.add %468, %458  : i64
    %470 = llvm.getelementptr %462[%469] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %471 = llvm.load %470 : !llvm.ptr<i32>
    %472 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %473 = llvm.mlir.constant(10 : index) : i64
    %474 = llvm.mul %443, %473  : i64
    %475 = llvm.mlir.constant(2 : index) : i64
    %476 = llvm.mul %461, %475  : i64
    %477 = llvm.add %474, %476  : i64
    %478 = llvm.add %477, %453  : i64
    %479 = llvm.add %478, %458  : i64
    %480 = llvm.getelementptr %472[%479] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %471, %480 : !llvm.ptr<i32>
    %481 = llvm.add %458, %457  : i64
    llvm.br ^bb79(%481 : i64)
  ^bb81:  // pred: ^bb79
    %482 = llvm.add %453, %452  : i64
    llvm.br ^bb77(%482 : i64)
  ^bb82:  // pred: ^bb77
    %483 = llvm.add %448, %447  : i64
    llvm.br ^bb75(%483 : i64)
  ^bb83:  // pred: ^bb75
    %484 = llvm.add %443, %442  : i64
    llvm.br ^bb73(%484 : i64)
  ^bb84:  // pred: ^bb73
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%485 : i64)
  ^bb85(%488: i64):  // 2 preds: ^bb84, ^bb95
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb86, ^bb96
  ^bb86:  // pred: ^bb85
    %490 = llvm.mlir.constant(0 : index) : i64
    %491 = llvm.mlir.constant(1 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb87(%490 : i64)
  ^bb87(%493: i64):  // 2 preds: ^bb86, ^bb94
    %494 = llvm.icmp "slt" %493, %491 : i64
    llvm.cond_br %494, ^bb88, ^bb95
  ^bb88:  // pred: ^bb87
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb89(%495 : i64)
  ^bb89(%498: i64):  // 2 preds: ^bb88, ^bb93
    %499 = llvm.icmp "slt" %498, %496 : i64
    llvm.cond_br %499, ^bb90, ^bb94
  ^bb90:  // pred: ^bb89
    %500 = llvm.mlir.constant(0 : index) : i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%500 : i64)
  ^bb91(%503: i64):  // 2 preds: ^bb90, ^bb92
    %504 = llvm.icmp "slt" %503, %501 : i64
    llvm.cond_br %504, ^bb92, ^bb93
  ^bb92:  // pred: ^bb91
    %505 = llvm.mlir.constant(4 : index) : i64
    %506 = llvm.add %493, %505  : i64
    %507 = llvm.extractvalue %141[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mul %488, %508  : i64
    %510 = llvm.mlir.constant(2 : index) : i64
    %511 = llvm.mul %493, %510  : i64
    %512 = llvm.add %509, %511  : i64
    %513 = llvm.add %512, %498  : i64
    %514 = llvm.add %513, %503  : i64
    %515 = llvm.getelementptr %507[%514] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %516 = llvm.load %515 : !llvm.ptr<i32>
    %517 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(10 : index) : i64
    %519 = llvm.mul %488, %518  : i64
    %520 = llvm.mlir.constant(2 : index) : i64
    %521 = llvm.mul %506, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.add %522, %498  : i64
    %524 = llvm.add %523, %503  : i64
    %525 = llvm.getelementptr %517[%524] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %516, %525 : !llvm.ptr<i32>
    %526 = llvm.add %503, %502  : i64
    llvm.br ^bb91(%526 : i64)
  ^bb93:  // pred: ^bb91
    %527 = llvm.add %498, %497  : i64
    llvm.br ^bb89(%527 : i64)
  ^bb94:  // pred: ^bb89
    %528 = llvm.add %493, %492  : i64
    llvm.br ^bb87(%528 : i64)
  ^bb95:  // pred: ^bb87
    %529 = llvm.add %488, %487  : i64
    llvm.br ^bb85(%529 : i64)
  ^bb96:  // pred: ^bb85
    %530 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %531 = llvm.insertvalue %141, %530[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %532 = llvm.insertvalue %306, %531[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %532 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v3_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.call @main_graph(%1, %2, %3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %4, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.store %13, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %16 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %19 = llvm.mlir.constant(2 : i64) : i64
    %20 = llvm.mlir.constant(16 : i64) : i64
    %21 = llvm.call @malloc(%20) : (i64) -> !llvm.ptr<i8>
    %22 = llvm.bitcast %21 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %23 = llvm.mlir.constant(4 : i64) : i64
    %24 = llvm.call @omTensorCreateUntyped(%23) : (i64) -> !llvm.ptr<i8>
    %25 = llvm.mlir.constant(1 : i64) : i64
    %26 = llvm.extractvalue %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.bitcast %26 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %28 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.bitcast %28 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%24, %25, %27, %29) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %30 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%24, %30) : (!llvm.ptr<i8>, i64) -> ()
    %31 = llvm.call @omTensorGetShape(%24) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %32 = llvm.call @omTensorGetStrides(%24) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %33 = llvm.mlir.constant(0 : i64) : i64
    %34 = llvm.extractvalue %17[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.getelementptr %31[%33] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %34, %35 : !llvm.ptr<i64>
    %36 = llvm.extractvalue %17[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.getelementptr %32[%33] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %36, %37 : !llvm.ptr<i64>
    %38 = llvm.mlir.constant(1 : i64) : i64
    %39 = llvm.extractvalue %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %31[%38] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %39, %40 : !llvm.ptr<i64>
    %41 = llvm.extractvalue %17[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.getelementptr %32[%38] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %41, %42 : !llvm.ptr<i64>
    %43 = llvm.mlir.constant(2 : i64) : i64
    %44 = llvm.extractvalue %17[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.getelementptr %31[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %44, %45 : !llvm.ptr<i64>
    %46 = llvm.extractvalue %17[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %32[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %46, %47 : !llvm.ptr<i64>
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.extractvalue %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.getelementptr %31[%48] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %49, %50 : !llvm.ptr<i64>
    %51 = llvm.extractvalue %17[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.getelementptr %32[%48] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %51, %52 : !llvm.ptr<i64>
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.getelementptr %22[%53] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %24, %54 : !llvm.ptr<ptr<i8>>
    %55 = llvm.mlir.constant(4 : i64) : i64
    %56 = llvm.call @omTensorCreateUntyped(%55) : (i64) -> !llvm.ptr<i8>
    %57 = llvm.mlir.constant(1 : i64) : i64
    %58 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %60 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.bitcast %60 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%56, %57, %59, %61) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %62 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%56, %62) : (!llvm.ptr<i8>, i64) -> ()
    %63 = llvm.call @omTensorGetShape(%56) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.call @omTensorGetStrides(%56) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.mlir.constant(0 : i64) : i64
    %66 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %63[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %64[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.mlir.constant(1 : i64) : i64
    %71 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %63[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %64[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.mlir.constant(2 : i64) : i64
    %76 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %63[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %64[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.mlir.constant(3 : i64) : i64
    %81 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.getelementptr %64[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %83, %84 : !llvm.ptr<i64>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.getelementptr %22[%85] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %56, %86 : !llvm.ptr<ptr<i8>>
    %87 = llvm.call @omTensorListCreate(%22, %19, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %87 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<59 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<59 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

