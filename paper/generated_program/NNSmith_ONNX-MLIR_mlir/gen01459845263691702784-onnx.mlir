module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_0(dense<[[[[4, 5]], [[3, 4]]], [[[4, 4]], [[4, 7]]]]> : tensor<2x2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x array<1 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>>
    %5 = llvm.bitcast %4 : !llvm.ptr<array<2 x array<2 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %5, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.insertvalue %9, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.mlir.constant(2 : index) : i64
    %12 = llvm.insertvalue %11, %10[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.mlir.constant(4 : index) : i64
    %14 = llvm.insertvalue %13, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.insertvalue %15, %14[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.insertvalue %17, %16[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.insertvalue %19, %18[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.insertvalue %21, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(2 : index) : i64
    %24 = llvm.insertvalue %23, %22[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(2 : index) : i64
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.mlir.constant(2 : index) : i64
    %31 = llvm.mlir.constant(1 : index) : i64
    %32 = llvm.mlir.constant(2 : index) : i64
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.mlir.constant(8 : index) : i64
    %35 = llvm.mlir.null : !llvm.ptr<i32>
    %36 = llvm.getelementptr %35[%34] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<i32> to i64
    %38 = llvm.mlir.constant(16 : index) : i64
    %39 = llvm.add %37, %38  : i64
    %40 = llvm.call @malloc(%39) : (i64) -> !llvm.ptr<i8>
    %41 = llvm.bitcast %40 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<i32> to i64
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.sub %38, %43  : i64
    %45 = llvm.add %42, %44  : i64
    %46 = llvm.urem %45, %38  : i64
    %47 = llvm.sub %45, %46  : i64
    %48 = llvm.inttoptr %47 : i64 to !llvm.ptr<i32>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %50 = llvm.insertvalue %41, %49[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.insertvalue %27, %53[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.insertvalue %28, %54[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.insertvalue %29, %55[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.insertvalue %30, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.insertvalue %33, %57[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.insertvalue %32, %58[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %60 = llvm.insertvalue %30, %59[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.insertvalue %31, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %62 = llvm.mlir.constant(0 : index) : i64
    %63 = llvm.mlir.constant(2 : index) : i64
    %64 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%62 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb11
    %66 = llvm.icmp "slt" %65, %63 : i64
    llvm.cond_br %66, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %67 = llvm.mlir.constant(0 : index) : i64
    %68 = llvm.mlir.constant(2 : index) : i64
    %69 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%67 : i64)
  ^bb3(%70: i64):  // 2 preds: ^bb2, ^bb10
    %71 = llvm.icmp "slt" %70, %68 : i64
    llvm.cond_br %71, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.mlir.constant(1 : index) : i64
    %74 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%72 : i64)
  ^bb5(%75: i64):  // 2 preds: ^bb4, ^bb9
    %76 = llvm.icmp "slt" %75, %73 : i64
    llvm.cond_br %76, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %77 = llvm.mlir.constant(0 : index) : i64
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%77 : i64)
  ^bb7(%80: i64):  // 2 preds: ^bb6, ^bb8
    %81 = llvm.icmp "slt" %80, %78 : i64
    llvm.cond_br %81, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %82 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %83 = llvm.load %82 : !llvm.ptr<i32>
    %84 = llvm.extractvalue %26[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(4 : index) : i64
    %86 = llvm.mul %65, %85  : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mul %70, %87  : i64
    %89 = llvm.add %86, %88  : i64
    %90 = llvm.mlir.constant(2 : index) : i64
    %91 = llvm.mul %75, %90  : i64
    %92 = llvm.add %89, %91  : i64
    %93 = llvm.add %92, %80  : i64
    %94 = llvm.getelementptr %84[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.load %94 : !llvm.ptr<i32>
    %96 = llvm.icmp "sgt" %83, %95 : i32
    %97 = llvm.select %96, %83, %95 : i1, i32
    %98 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(4 : index) : i64
    %100 = llvm.mul %65, %99  : i64
    %101 = llvm.mlir.constant(2 : index) : i64
    %102 = llvm.mul %70, %101  : i64
    %103 = llvm.add %100, %102  : i64
    %104 = llvm.mlir.constant(2 : index) : i64
    %105 = llvm.mul %75, %104  : i64
    %106 = llvm.add %103, %105  : i64
    %107 = llvm.add %106, %80  : i64
    %108 = llvm.getelementptr %98[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %97, %108 : !llvm.ptr<i32>
    %109 = llvm.add %80, %79  : i64
    llvm.br ^bb7(%109 : i64)
  ^bb9:  // pred: ^bb7
    %110 = llvm.add %75, %74  : i64
    llvm.br ^bb5(%110 : i64)
  ^bb10:  // pred: ^bb5
    %111 = llvm.add %70, %69  : i64
    llvm.br ^bb3(%111 : i64)
  ^bb11:  // pred: ^bb3
    %112 = llvm.add %65, %64  : i64
    llvm.br ^bb1(%112 : i64)
  ^bb12:  // pred: ^bb1
    %113 = llvm.mlir.constant(2 : index) : i64
    %114 = llvm.mlir.constant(2 : index) : i64
    %115 = llvm.mlir.constant(1 : index) : i64
    %116 = llvm.mlir.constant(2 : index) : i64
    %117 = llvm.mlir.constant(1 : index) : i64
    %118 = llvm.mlir.constant(2 : index) : i64
    %119 = llvm.mlir.constant(4 : index) : i64
    %120 = llvm.mlir.constant(8 : index) : i64
    %121 = llvm.mlir.null : !llvm.ptr<i32>
    %122 = llvm.getelementptr %121[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<i32> to i64
    %124 = llvm.mlir.constant(16 : index) : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.call @malloc(%125) : (i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<i32> to i64
    %129 = llvm.mlir.constant(1 : index) : i64
    %130 = llvm.sub %124, %129  : i64
    %131 = llvm.add %128, %130  : i64
    %132 = llvm.urem %131, %124  : i64
    %133 = llvm.sub %131, %132  : i64
    %134 = llvm.inttoptr %133 : i64 to !llvm.ptr<i32>
    %135 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %136 = llvm.insertvalue %127, %135[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %134, %136[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.insertvalue %138, %137[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.insertvalue %113, %139[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.insertvalue %114, %140[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %142 = llvm.insertvalue %115, %141[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.insertvalue %116, %142[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %144 = llvm.insertvalue %119, %143[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.insertvalue %118, %144[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.insertvalue %116, %145[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.insertvalue %117, %146[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%148 : i64)
  ^bb13(%151: i64):  // 2 preds: ^bb12, ^bb23
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.mlir.constant(2 : index) : i64
    %155 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%153 : i64)
  ^bb15(%156: i64):  // 2 preds: ^bb14, ^bb22
    %157 = llvm.icmp "slt" %156, %154 : i64
    llvm.cond_br %157, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %158 = llvm.mlir.constant(0 : index) : i64
    %159 = llvm.mlir.constant(1 : index) : i64
    %160 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%158 : i64)
  ^bb17(%161: i64):  // 2 preds: ^bb16, ^bb21
    %162 = llvm.icmp "slt" %161, %159 : i64
    llvm.cond_br %162, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%163 : i64)
  ^bb19(%166: i64):  // 2 preds: ^bb18, ^bb20
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %168 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.mlir.constant(4 : index) : i64
    %170 = llvm.mul %151, %169  : i64
    %171 = llvm.mlir.constant(2 : index) : i64
    %172 = llvm.mul %156, %171  : i64
    %173 = llvm.add %170, %172  : i64
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mul %161, %174  : i64
    %176 = llvm.add %173, %175  : i64
    %177 = llvm.add %176, %166  : i64
    %178 = llvm.getelementptr %168[%177] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %178 : !llvm.ptr<i32>
    %180 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %181 = llvm.mlir.constant(4 : index) : i64
    %182 = llvm.mul %151, %181  : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %156, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mul %161, %186  : i64
    %188 = llvm.add %185, %187  : i64
    %189 = llvm.add %188, %166  : i64
    %190 = llvm.getelementptr %180[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %191 = llvm.load %190 : !llvm.ptr<i32>
    %192 = llvm.mul %179, %191  : i32
    %193 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mul %151, %194  : i64
    %196 = llvm.mlir.constant(2 : index) : i64
    %197 = llvm.mul %156, %196  : i64
    %198 = llvm.add %195, %197  : i64
    %199 = llvm.mlir.constant(2 : index) : i64
    %200 = llvm.mul %161, %199  : i64
    %201 = llvm.add %198, %200  : i64
    %202 = llvm.add %201, %166  : i64
    %203 = llvm.getelementptr %193[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %192, %203 : !llvm.ptr<i32>
    %204 = llvm.add %166, %165  : i64
    llvm.br ^bb19(%204 : i64)
  ^bb21:  // pred: ^bb19
    %205 = llvm.add %161, %160  : i64
    llvm.br ^bb17(%205 : i64)
  ^bb22:  // pred: ^bb17
    %206 = llvm.add %156, %155  : i64
    llvm.br ^bb15(%206 : i64)
  ^bb23:  // pred: ^bb15
    %207 = llvm.add %151, %150  : i64
    llvm.br ^bb13(%207 : i64)
  ^bb24:  // pred: ^bb13
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mlir.constant(2 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(2 : index) : i64
    %212 = llvm.mlir.constant(1 : index) : i64
    %213 = llvm.mlir.constant(2 : index) : i64
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mlir.constant(8 : index) : i64
    %216 = llvm.mlir.null : !llvm.ptr<i32>
    %217 = llvm.getelementptr %216[%215] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %218 = llvm.ptrtoint %217 : !llvm.ptr<i32> to i64
    %219 = llvm.mlir.constant(16 : index) : i64
    %220 = llvm.add %218, %219  : i64
    %221 = llvm.call @malloc(%220) : (i64) -> !llvm.ptr<i8>
    %222 = llvm.bitcast %221 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %223 = llvm.ptrtoint %222 : !llvm.ptr<i32> to i64
    %224 = llvm.mlir.constant(1 : index) : i64
    %225 = llvm.sub %219, %224  : i64
    %226 = llvm.add %223, %225  : i64
    %227 = llvm.urem %226, %219  : i64
    %228 = llvm.sub %226, %227  : i64
    %229 = llvm.inttoptr %228 : i64 to !llvm.ptr<i32>
    %230 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %231 = llvm.insertvalue %222, %230[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %229, %231[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.mlir.constant(0 : index) : i64
    %234 = llvm.insertvalue %233, %232[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %208, %234[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %209, %235[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %210, %236[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %211, %237[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %214, %238[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.insertvalue %213, %239[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %241 = llvm.insertvalue %211, %240[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.insertvalue %212, %241[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %243 = llvm.mlir.constant(0 : index) : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%243 : i64)
  ^bb25(%246: i64):  // 2 preds: ^bb24, ^bb35
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.mlir.constant(2 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%248 : i64)
  ^bb27(%251: i64):  // 2 preds: ^bb26, ^bb34
    %252 = llvm.icmp "slt" %251, %249 : i64
    llvm.cond_br %252, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.mlir.constant(1 : index) : i64
    %255 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%253 : i64)
  ^bb29(%256: i64):  // 2 preds: ^bb28, ^bb33
    %257 = llvm.icmp "slt" %256, %254 : i64
    llvm.cond_br %257, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(2 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%258 : i64)
  ^bb31(%261: i64):  // 2 preds: ^bb30, ^bb32
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %263 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %264 = llvm.mlir.constant(4 : index) : i64
    %265 = llvm.mul %246, %264  : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mul %251, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.mul %256, %269  : i64
    %271 = llvm.add %268, %270  : i64
    %272 = llvm.add %271, %261  : i64
    %273 = llvm.getelementptr %263[%272] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %274 = llvm.load %273 : !llvm.ptr<i32>
    %275 = llvm.extractvalue %147[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.mlir.constant(4 : index) : i64
    %277 = llvm.mul %246, %276  : i64
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mul %251, %278  : i64
    %280 = llvm.add %277, %279  : i64
    %281 = llvm.mlir.constant(2 : index) : i64
    %282 = llvm.mul %256, %281  : i64
    %283 = llvm.add %280, %282  : i64
    %284 = llvm.add %283, %261  : i64
    %285 = llvm.getelementptr %275[%284] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %286 = llvm.load %285 : !llvm.ptr<i32>
    %287 = llvm.add %274, %286  : i32
    %288 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.mlir.constant(4 : index) : i64
    %290 = llvm.mul %246, %289  : i64
    %291 = llvm.mlir.constant(2 : index) : i64
    %292 = llvm.mul %251, %291  : i64
    %293 = llvm.add %290, %292  : i64
    %294 = llvm.mlir.constant(2 : index) : i64
    %295 = llvm.mul %256, %294  : i64
    %296 = llvm.add %293, %295  : i64
    %297 = llvm.add %296, %261  : i64
    %298 = llvm.getelementptr %288[%297] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %287, %298 : !llvm.ptr<i32>
    %299 = llvm.add %261, %260  : i64
    llvm.br ^bb31(%299 : i64)
  ^bb33:  // pred: ^bb31
    %300 = llvm.add %256, %255  : i64
    llvm.br ^bb29(%300 : i64)
  ^bb34:  // pred: ^bb29
    %301 = llvm.add %251, %250  : i64
    llvm.br ^bb27(%301 : i64)
  ^bb35:  // pred: ^bb27
    %302 = llvm.add %246, %245  : i64
    llvm.br ^bb25(%302 : i64)
  ^bb36:  // pred: ^bb25
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mlir.constant(2 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.constant(2 : index) : i64
    %309 = llvm.mlir.constant(4 : index) : i64
    %310 = llvm.mlir.constant(8 : index) : i64
    %311 = llvm.mlir.null : !llvm.ptr<i32>
    %312 = llvm.getelementptr %311[%310] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %313 = llvm.ptrtoint %312 : !llvm.ptr<i32> to i64
    %314 = llvm.mlir.constant(16 : index) : i64
    %315 = llvm.add %313, %314  : i64
    %316 = llvm.call @malloc(%315) : (i64) -> !llvm.ptr<i8>
    %317 = llvm.bitcast %316 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %318 = llvm.ptrtoint %317 : !llvm.ptr<i32> to i64
    %319 = llvm.mlir.constant(1 : index) : i64
    %320 = llvm.sub %314, %319  : i64
    %321 = llvm.add %318, %320  : i64
    %322 = llvm.urem %321, %314  : i64
    %323 = llvm.sub %321, %322  : i64
    %324 = llvm.inttoptr %323 : i64 to !llvm.ptr<i32>
    %325 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %326 = llvm.insertvalue %317, %325[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %324, %326[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.mlir.constant(0 : index) : i64
    %329 = llvm.insertvalue %328, %327[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %303, %329[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %304, %330[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.insertvalue %305, %331[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %333 = llvm.insertvalue %306, %332[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %334 = llvm.insertvalue %309, %333[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %335 = llvm.insertvalue %308, %334[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %306, %335[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.insertvalue %307, %336[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.mlir.constant(2 : index) : i64
    %340 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%338 : i64)
  ^bb37(%341: i64):  // 2 preds: ^bb36, ^bb47
    %342 = llvm.icmp "slt" %341, %339 : i64
    llvm.cond_br %342, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %343 = llvm.mlir.constant(0 : index) : i64
    %344 = llvm.mlir.constant(2 : index) : i64
    %345 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%343 : i64)
  ^bb39(%346: i64):  // 2 preds: ^bb38, ^bb46
    %347 = llvm.icmp "slt" %346, %344 : i64
    llvm.cond_br %347, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %348 = llvm.mlir.constant(0 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%348 : i64)
  ^bb41(%351: i64):  // 2 preds: ^bb40, ^bb45
    %352 = llvm.icmp "slt" %351, %349 : i64
    llvm.cond_br %352, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%353 : i64)
  ^bb43(%356: i64):  // 2 preds: ^bb42, ^bb44
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %358 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(4 : index) : i64
    %360 = llvm.mul %341, %359  : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mul %346, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.mlir.constant(2 : index) : i64
    %365 = llvm.mul %351, %364  : i64
    %366 = llvm.add %363, %365  : i64
    %367 = llvm.add %366, %356  : i64
    %368 = llvm.getelementptr %358[%367] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %369 = llvm.load %368 : !llvm.ptr<i32>
    %370 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(4 : index) : i64
    %372 = llvm.mul %341, %371  : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mul %346, %373  : i64
    %375 = llvm.add %372, %374  : i64
    %376 = llvm.mlir.constant(2 : index) : i64
    %377 = llvm.mul %351, %376  : i64
    %378 = llvm.add %375, %377  : i64
    %379 = llvm.add %378, %356  : i64
    %380 = llvm.getelementptr %370[%379] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %381 = llvm.load %380 : !llvm.ptr<i32>
    %382 = llvm.icmp "slt" %369, %381 : i32
    %383 = llvm.select %382, %369, %381 : i1, i32
    %384 = llvm.extractvalue %337[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mul %341, %385  : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mul %346, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %351, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %356  : i64
    %394 = llvm.getelementptr %384[%393] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %383, %394 : !llvm.ptr<i32>
    %395 = llvm.add %356, %355  : i64
    llvm.br ^bb43(%395 : i64)
  ^bb45:  // pred: ^bb43
    %396 = llvm.add %351, %350  : i64
    llvm.br ^bb41(%396 : i64)
  ^bb46:  // pred: ^bb41
    %397 = llvm.add %346, %345  : i64
    llvm.br ^bb39(%397 : i64)
  ^bb47:  // pred: ^bb39
    %398 = llvm.add %341, %340  : i64
    llvm.br ^bb37(%398 : i64)
  ^bb48:  // pred: ^bb37
    %399 = llvm.mlir.constant(2 : index) : i64
    %400 = llvm.mlir.constant(2 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    %404 = llvm.mlir.constant(2 : index) : i64
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.mlir.constant(8 : index) : i64
    %407 = llvm.mlir.null : !llvm.ptr<i1>
    %408 = llvm.getelementptr %407[%406] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %409 = llvm.ptrtoint %408 : !llvm.ptr<i1> to i64
    %410 = llvm.mlir.constant(16 : index) : i64
    %411 = llvm.add %409, %410  : i64
    %412 = llvm.call @malloc(%411) : (i64) -> !llvm.ptr<i8>
    %413 = llvm.bitcast %412 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %414 = llvm.ptrtoint %413 : !llvm.ptr<i1> to i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.sub %410, %415  : i64
    %417 = llvm.add %414, %416  : i64
    %418 = llvm.urem %417, %410  : i64
    %419 = llvm.sub %417, %418  : i64
    %420 = llvm.inttoptr %419 : i64 to !llvm.ptr<i1>
    %421 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %422 = llvm.insertvalue %413, %421[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %420, %422[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.insertvalue %424, %423[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %426 = llvm.insertvalue %399, %425[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %427 = llvm.insertvalue %400, %426[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %428 = llvm.insertvalue %401, %427[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %429 = llvm.insertvalue %402, %428[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %430 = llvm.insertvalue %405, %429[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %431 = llvm.insertvalue %404, %430[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %432 = llvm.insertvalue %402, %431[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %433 = llvm.insertvalue %403, %432[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%434 : i64)
  ^bb49(%437: i64):  // 2 preds: ^bb48, ^bb59
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%439 : i64)
  ^bb51(%442: i64):  // 2 preds: ^bb50, ^bb58
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(1 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%444 : i64)
  ^bb53(%447: i64):  // 2 preds: ^bb52, ^bb57
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%449 : i64)
  ^bb55(%452: i64):  // 2 preds: ^bb54, ^bb56
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %454 = llvm.extractvalue %61[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.mlir.constant(4 : index) : i64
    %456 = llvm.mul %437, %455  : i64
    %457 = llvm.mlir.constant(2 : index) : i64
    %458 = llvm.mul %442, %457  : i64
    %459 = llvm.add %456, %458  : i64
    %460 = llvm.mlir.constant(2 : index) : i64
    %461 = llvm.mul %447, %460  : i64
    %462 = llvm.add %459, %461  : i64
    %463 = llvm.add %462, %452  : i64
    %464 = llvm.getelementptr %454[%463] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %465 = llvm.load %464 : !llvm.ptr<i32>
    %466 = llvm.extractvalue %242[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(4 : index) : i64
    %468 = llvm.mul %437, %467  : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mul %442, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %447, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.add %474, %452  : i64
    %476 = llvm.getelementptr %466[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %477 = llvm.load %476 : !llvm.ptr<i32>
    %478 = llvm.icmp "eq" %465, %477 : i32
    %479 = llvm.extractvalue %433[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %480 = llvm.mlir.constant(4 : index) : i64
    %481 = llvm.mul %437, %480  : i64
    %482 = llvm.mlir.constant(2 : index) : i64
    %483 = llvm.mul %442, %482  : i64
    %484 = llvm.add %481, %483  : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mul %447, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.add %487, %452  : i64
    %489 = llvm.getelementptr %479[%488] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %478, %489 : !llvm.ptr<i1>
    %490 = llvm.add %452, %451  : i64
    llvm.br ^bb55(%490 : i64)
  ^bb57:  // pred: ^bb55
    %491 = llvm.add %447, %446  : i64
    llvm.br ^bb53(%491 : i64)
  ^bb58:  // pred: ^bb53
    %492 = llvm.add %442, %441  : i64
    llvm.br ^bb51(%492 : i64)
  ^bb59:  // pred: ^bb51
    %493 = llvm.add %437, %436  : i64
    llvm.br ^bb49(%493 : i64)
  ^bb60:  // pred: ^bb49
    %494 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %495 = llvm.insertvalue %337, %494[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %496 = llvm.insertvalue %433, %495[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %496 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %4 = llvm.call @main_graph(%1, %2, %3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %4, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64)>>) -> ()
    %16 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
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
    %58 = llvm.extractvalue %18[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.bitcast %58 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %60 = llvm.extractvalue %18[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.bitcast %60 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%56, %57, %59, %61) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %62 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%56, %62) : (!llvm.ptr<i8>, i64) -> ()
    %63 = llvm.call @omTensorGetShape(%56) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %64 = llvm.call @omTensorGetStrides(%56) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %65 = llvm.mlir.constant(0 : i64) : i64
    %66 = llvm.extractvalue %18[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.getelementptr %63[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %66, %67 : !llvm.ptr<i64>
    %68 = llvm.extractvalue %18[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %64[%65] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.mlir.constant(1 : i64) : i64
    %71 = llvm.extractvalue %18[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.getelementptr %63[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %71, %72 : !llvm.ptr<i64>
    %73 = llvm.extractvalue %18[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %64[%70] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.mlir.constant(2 : i64) : i64
    %76 = llvm.extractvalue %18[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.getelementptr %63[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %76, %77 : !llvm.ptr<i64>
    %78 = llvm.extractvalue %18[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %64[%75] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.mlir.constant(3 : i64) : i64
    %81 = llvm.extractvalue %18[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %63[%80] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %81, %82 : !llvm.ptr<i64>
    %83 = llvm.extractvalue %18[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<140 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<140 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

